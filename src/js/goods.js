require(['config'],function(){
    require(['jquery','lzfzoom','common'],function($,zoom,com){
        //1/引入头部HTML文件,包括顶部导航栏，nav ，和产品列表菜单栏
        $('#pageHeader').load('../html/header.html');

        //2/ 商品详情列表页切换
        //获取列表切换的父级元素
        var $tablist = $('#detail .showbox');
        var $tabitem = $tablist.find('ul li');
        var $content = $tablist.find('.goodsbigbox div');

        $content.not(':first').hide();
        // 高亮显示第一个tab
        $tabitem.first().addClass('border_bottom');

        $tablist.on('click','ul li',function(){
            // 利用index()方法，避免循环判断
            var idx = $(this).index();
            //* 显示对应图片，隐藏其它图片
            $content.eq(idx).show().siblings().hide();
            // * 高亮显示当前tab，去除其它高亮
            $tabitem.eq(idx).addClass('border_bottom').siblings().removeClass('border_bottom');
        });

        //3/高亮颜色选项菜单栏
        var $colorlist =  $('#detail .colorbox');
        $colorlist.find('a').eq(0).addClass('border');
       
        $colorlist.on('click','a',function(){
            
            $(this).addClass('border').closest('span').siblings().find('a').removeClass('border');
        });
        //4//放大镜插件
        $('#detail .biglist ').lzfzoom({
            position:'right'
        });
        $('#detail .smallList img').on('mouseenter',function(){
            $('#detail .biglist img').attr({
                'src':this.src,
                'data-big':$(this).attr('data-big') || this.src,
            });
        }); 
        // 补充功能：实现鼠标上移小图片添加高亮样式
        // 4-2-1:默认第一张高亮
        $('#detail .smallList').find('li.targetli img').addClass('border');
        // 4-2-2:鼠标上移才会高亮
        $('#detail .smallList').on('mouseenter','li',function(){
                $(this).find('img').addClass('border').closest('li').siblings().find('img').removeClass('border');
        });

        //5//左右切换小图功能
        var container = document.querySelector('#detail .container');
        // var focus = document.querySelector('#detail .focus');
        var ullist = document.querySelector('#detail .smallList');
        var length = ullist.children.length;
        var index = 0;
        // var showWidth = focus.offsetWidth;
        var showWidth = 350;
        function display(){
            if(index > Math.ceil(length/5)-1){
                index = Math.ceil(length/5)-1;
            }else if(index < 0){
                index = 0;
            }
            let target = -index*showWidth;
            animate(ullist,{left:target});
        }
        //利用jQuery的事件委托方法实现左右切换
        $(container).on('click','.left_arr',function(){
            index--;
            display();
        }).on('click','.right_arr',function(){
            index++;
            display();
        });
        //5//左右切换小图功能代码结束
        
        //功能6 根据传过来的id加载指定的产品信息和加入购物车
        //实现购物车功能第一步
        var goods = {};//创建一个盛放当前商品信息的对象
        var carlist = [];//创建一个盛放所有cookie商品信息的数组
        var cookies = document.cookie.split('; ');
        if(cookies.length){
            cookies.forEach(function(item){
                var arr = item.split('=');
                if(arr[0]==='carlist'){
                    carlist = JSON.parse(arr[1]);
                }
            });
        }; 

        //加载数据第一步 获取id
        var params = location.search;
        params = params.slice(1);// 去掉?号
        var arr = params.split('=');
        var currentid = arr[1];//得到从页面传过来的id
        console.log(currentid);

        // 加载数据第二步 获取详情页面的元素容器
        // 1-1、获取HTML页面上的对应的元素
        // 大图容器
        var imgplacebig    = document.querySelector("#detail .biglist .targetpic");
        // 小图容器
        var imgplacesmall1 = document.querySelector("#detail .smallList .targetpic");
        var titleplace     = document.querySelector('#detail .goods_title');
        var commentplace   = document.querySelector('#detail .goods_desc');
        var ourprice       = document.querySelector('#detail .ourprice');
        var listprice      = document.querySelector('#detail .listprice');
        var shop_name      = document.querySelector('#detail .shop_name');
        // 商品详情切换的信息
        var good_name = document.querySelector('.good_name');
        var good_brand = document.querySelector('.good_brand');
        // 获取数量input表单元素，实现用户自定义购买数量
        var qty = document.querySelector('#detail .qty');
        // 获取购物车点击按钮，注意要给该元素添加自定义id属性，详见封装函数detailload
        var addcar = document.querySelector('#detail .addcar_btn');
        // 点击添加到购物车飞入动画效果---利用jQuery
        // 第一步：获取需要复制的图片元素
        var $targetimg = $('#detail .good1 img');

        // 加载数据第三步 封装一个生成页面结构的函数detailload
        function detailload(targetitem){
            //2/获取页面上的元素        
            imgplacebig.src = '';
            imgplacebig.dataset.big = '';
            imgplacesmall1.src = '';
            imgplacesmall1.dataset.big = '';
            //注意图片路径名称是否有误
            imgplacebig.src = targetitem.img; 
            imgplacebig.dataset.big = targetitem.img;
            imgplacesmall1.src = targetitem.img;
            imgplacesmall1.dataset.big = targetitem.img;
           
            //3//投影产品名称、描述、价格、店铺等信息
           
            titleplace.innerText = '';
            titleplace.innerText = targetitem.title;

            // 商品详情切换页的信息
            good_name.innerText = '';
            good_name.innerText = targetitem.title;
            good_brand.innerText = '';
            good_brand.innerText = targetitem.brand;
            
            commentplace.innerText = '';
            commentplace.innerText = targetitem.desc;

            ourprice.innerText = '';
            ourprice.innerText = targetitem.ourprice;

            listprice.innerText = '';
            listprice.innerText = targetitem.listprice;
            
            shop_name.innerText = '';
            shop_name.innerText = targetitem.shopname;        
            //给加入购物车按钮添加自定义属性data-id，就是为了下面判断加入购物车的商品计数
            addcar.dataset.id = '';
            addcar.dataset.id = targetitem.id;
        };
        // 4 利用匿名函数以当前id为依据发起ajax请求，获取指定id产品信息，并写入页面
        (function(){
            // var currentid = arr[1];
            $.ajax({
                type:"post",
                url:'../api/goods.php',
                data:{
                    currentid:currentid
                },
                success:function(res){
                    var currentgoods = JSON.parse(res);
                    console.log(currentgoods);
                    // 利用封装函数显示信息到页面
                    detailload(currentgoods);
                    // 请求对应id商品信息和加载到页面功能结束
                    
                    // 实现点击购物车添加商品到cookie和实现购物车飞入效果       
                    $(addcar).on('click',function(){
                        // 添加商品到购物车cookie
                        var id = this.dataset.id;
                        console.log(id);
                        for(var i = 0;i<carlist.length; i++){
                            if(carlist[i].id === id){
                                break;
                            }
                        }
                        if(i === carlist.length){
                            for(var attr in currentgoods){
                                goods[attr] = currentgoods[attr];
                                 // 实现将表单输入框里面的数据添加作为该商品在购物车的qty,注意：goods后面的qty是给goods对象新增qty属性，而等号右边的qty是指前面输入的值
                                goods.qty=qty.value*1;
                            }
                            carlist.unshift(goods);
                        }else{
                            // 重复点击添加商品实现将表单输入框里面的数据添加作为该商品在购物车的数量qty
                            // 注意：carlist[i]后面的qty是指该对象qty属性，而等号右边的qty是指前面输入的值
                            carlist[i].qty += qty.value*1;
                        }
                        var now = new Date();
                        now.setHours(now.getHours()+1);
                        document.cookie =  'carlist=' + JSON.stringify(carlist) + ';expires=' + now + ';path=/';

                        // 购物车飞入动画效果，
                        // 复制目标图片
                        // var $targetimg = $('#detail .good1 img');
                        var $copyimg = $targetimg.clone();
                        console.log($copyimg);
                        // 给复制的图片添加样式
                        $copyimg.css({
                            position:'absolute',
                            // 目的是定位到购物车的位置
                            left:$(addcar).offset().left+75,
                            top:$(addcar).offset().top-50,
                            width:66,
                            zIndex:2
                        });
                        // 插入body
                        $('body').append($copyimg);
                        // 动画效果
                        $copyimg.animate({
                            left:$('#asider .shiftbtn').offset().left,
                            top: $('#asider .shiftbtn').offset().top,
                            width:99,
                            zIndex:200
                        },function(){
                            // 动画结束后去除复制的图片
                            $copyimg.remove();
                        });
                    });
                    // 添加商品到cookie和实现购物车飞入效果结束                   
                }
            });
        }) ();
    
        //功能7、让页面右侧的小购物车加载购物车cookie里面的商品
        var smallcart = document.querySelector('.contentlist .smallcart');
        var cartQty = document.querySelector('.contentlist .cartQty');
        var cartTotalCost =document.querySelector('.contentlist .cartTotalCost');
        var goodsQty = document.querySelector('#asider .goodsqty');console.log(goodsQty);
        var cartqty = 0;
        var carttotalcost = 0;
        
        var smallul = document.createElement('ul');
        smallul.innerHTML = carlist.map(function(item){
            cartqty += item.qty;
            carttotalcost += item.ourprice*item.qty;
            return`
                <li data-guid="${item.id}">
                    <a href="goods.html?id=${item.id}">
                        <img src="${item.img}" alt="" />
                    </a>
                    <p class="title">${item.title}</p>
                    <p class="shopprice">￥
                        <span class="oprice">${item.ourprice}</span>
                          X
                        <span class="itemqty">${item.qty}</span>
                    </p>
                </li>
            `
        }).join('');
        smallcart.appendChild(smallul);
        cartQty.innerText = cartqty;
        goodsQty.innerText = cartqty;
        cartTotalCost.innerText = carttotalcost.toFixed(2);
    });
});

