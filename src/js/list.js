require(['config'],function(){
    require(['jquery','common'],function($,com){
        //功能1：引入头部HTML文件,包括顶部导航栏，nav ，和产品列表菜单栏
        $('#pageHeader').load('../html/header.html');

        //功能2：实现点击切换隐藏二级菜单栏
        $('#catelist h3').on('click',function(){
            $('#catelist .tablist1').slideToggle(250);
        });

        //功能:3：在本页list.html根据产品类别跳转到商品列表页加载指定类别的产品列表
        //注意list.html的应用路径与首页不同哦
        var $tab = $('#catelist .tablist1');
        $tab.on('click','li',function(){
            // console.log(this);
            var category = this.getAttribute("data-category");
            location.href = "list.html"+"?"+"category="+category;
        });
        // 功能8 登录成功后显示用户名--cookie
        var username_after = document.querySelector('.loginafter .username');
        var loginbefore =  document.querySelector('.loginbefore');
        var loginafter =  document.querySelector('.loginafter');

        // 功能5 购物车功能，1、新建一个空的数组，用于保存购物车中的商品信息
        // 注意一定要将carlist定义成一个全局变量
        var carlist = [];
        var cookies = document.cookie; 
        if(cookies.length){
            cookies = cookies.split('; ');
            cookies.forEach(function(item){
                var arr = item.split('=');
                if(arr[0] === 'carlist'){
                    carlist = JSON.parse(arr[1]);
                }
                 // 8.2 获取cookie里面的username信息
                if(arr[0] === 'username'){
                    username_after.innerText = arr[1];
                    loginbefore.style.display = 'none';
                    loginafter.style.display = 'inline-block';
                }
            })
        };
        //8.3 点击退出，清空用户cookie信息
        var clearall = document.getElementById('clearall');
        clearall.onclick = function(){
            var now = new Date();
            now.setDate(now.getDate()-10)
            document.cookie = 'username=x;expires='+now.toUTCString() + ';path=/';
            loginbefore.style.display = 'inline-block';
            loginafter.style.display = 'none';
        }

        // 功能4：接收来自首页和本列表页面的category信息，生成对应类别的商品列表，
        // 且实现点击对应的图片查看商品信息和加入购物车功能
        var $datalist = $('#maingoods_list .li_style0');
         // 获取盛放某个产品类别的容器元素
        var page = document.querySelector('#real_page .pagenum');
        var single_page = document.querySelector('.single_page');
        var all_page = document.querySelector('.all_page');
        // 获取盛放当前页面所有产品数量元素
        var total = document.querySelector('#real_page .totalnum');
        var total_num = document.querySelector('.total_num');

        var params = location.search;
        params = params.slice(1);   // 去掉?号
        var arr = params.split('=');
        var category = arr[1];//从首页或本页面传来的category数据
        var pageNo = 1; //页数
        var qty = 20;//每页显示数量  
        $.ajax({
            type:"post",
            url:'../api/list.php',
            data:{
                category:category,
                pageNo:pageNo,
                qty:qty
            },
            success:function(res){
                var res_cate = JSON.parse(res);console.log(res_cate);
                var ul = document.createElement('ul');
                ul.innerHTML = res_cate.data.map(function(item){
                    return`
                        <li data-guid="${item.id}">
                            <a href="goods.html?id=${item.id}">
                                <img src="${item.img}" alt="" />
                            </a>
                            <h3>${item.title}</h3>
                            <h4>${item.desc}</h4>
                            <p class="unit">￥</p>
                            <p class="ourprice">${item.ourprice}</p>
                            <p class="listprice">${item.listprice}</p>
                            <h5>${item.shopname}</h5>
                            <a href="javascript:;" class="addcar_btn"><i></i>加入购物车</a>
                            <a href="javascript:;" class="focuson"><span></span>关注商品</a>
                        </li>
                    `
                }).join('');
                $datalist.append(ul);
                // 2、生成分页
                page.innerText = '';
                //显示当前类别的所有商品总数
                total.innerText = res_cate.total;
                //显示列表页顶部信息
                total_num.innerText = res_cate.total;
                single_page.innerText = '';
                single_page.innerText = pageNo;
                //加载数据前必须清空前面的数据
                var pageQty = Math.ceil(res_cate.total/res_cate.qty);
                all_page.innerText = Math.ceil(res_cate.total/res_cate.qty);
                for(var i=1;i<=pageQty;i++){
                    var span = document.createElement('span');
                    span.innerHTML = i;

                    if(i === pageNo){
                        span.className = 'active';
                    }
                    page.appendChild(span);
                };  
                ul.addEventListener('click',function(e){
                    e = e || window.event;
                    var target = e.target || e.srcElement;
                 
                    //五购物车功能 1、保存被选中的商品信息到cookie 2、点击飞入购物车动画
                    if(target.className.toLowerCase()==='addcar_btn'){
                        //5-1 购物车最后将在aplication标签页面会显示所有的产品信息
                        //不管是首页传递参数生成的列表页还是本页生成的产品列表，
                        //共用一个叫carlist的cookie
                        var id = target.parentNode.getAttribute('data-guid');
                        //判断carlist中是否存在相同的商品信息
                        //判断循环是否跑完
                        for(var i = 0; i<carlist.length; i++){
                            if(carlist[i].id === id){
                                break;
                            }
                        }
                        //如果点击的产品信息经过上面的循环发现并没有这个产品在购物车的话
                        //就创建一个对象，并且计数为1；
                        if(i === carlist.length){                    
                            var goods = {
                                id:id,
                                img:target.parentNode.children[0].children[0].src,
                                title:target.parentNode.children[1].innerText,
                                ourprice:target.parentNode.children[4].innerText,
                                listprice:target.parentNode.children[5].innerText,
                                shopname:target.parentNode.children[6].innerText,
                                desc:target.parentNode.children[2].innerText,
                                qty:1
                            }
                            carlist.unshift(goods);
                        }else{
                            //若已经存在产品信息：数量加1
                            carlist[i].qty++;
                        }
                        var now = new Date();
                        now.setHours(now.getHours()+1);
                        document.cookie =  'carlist=' + JSON.stringify(carlist) + ';expires=' + now + ';path=/';
                    }
                });
                // 飞入购物车动画jQuery代码开始
                $(ul).on('click','.addcar_btn',function(){
                    //获取事件源对象.addcar按钮DOM节点最近的li父级元素$li
                    var $li = $(this).closest('li');
                    // 获取当前$li下面的子元素img
                    var $targetimg = $li.find('img');

                    var $copyimg = $targetimg.clone();

                    $copyimg.css({
                        position:'absolute',
                        left:$targetimg.offset().left,
                        top:$targetimg.offset().top,
                        width:$targetimg.outerWidth()
                    });
                    $('body').append($copyimg);
                    // 动画
                    $copyimg.animate({
                        left:$('#asider .shiftbtn').offset().left,
                        top:$('#asider .shiftbtn').offset().top,
                        width:30,
                        height:30
                    },function(){
                        // 动画完成后，删除复制的图片
                        $copyimg.remove();
                    });
                });
            }
        });
        
        page.onclick = function(e){
            if(e.target.tagName.toLowerCase()==='span'){
                pageNo = e.target.innerText*1;
                $.ajax({
                    type:"post",
                    url:'../api/list.php',
                    data:{
                        category:category,
                        pageNo:pageNo,
                        qty:qty
                    },
                    success:function(res){
                        // console.log(res);
                        // 注意，jQuery返回的数据还是需要进行json转换才可以使用哦
                        var res_cate = JSON.parse(res);
                        console.log(res_cate);
                        var ul = document.createElement('ul');
                        ul.classList.add('clearfix');
                        
                        ul.innerHTML = res_cate.data.map(function(item){
                            return`
                                <li data-guid="${item.id}">
                                    <a href="goods.html?id=${item.id}">
                                        <img src="${item.img}" alt="" />
                                    </a>
                                    <h3>${item.title}</h3>
                                    <h4>${item.desc}</h4>
                                    <p class="unit">￥</p>
                                    <p class="ourprice">${item.ourprice}</p>
                                    <p class="listprice">${item.listprice}</p>
                                    <h5>${item.shopname}</h5>
                                    <a href="javascript:;" class="addcar_btn"><i></i>加入购物车</a>
                                    <a href="javascript:;" class="focuson"><span></span>关注商品</a>
                                </li>
                                `
                        }).join('');
                        $datalist[0].innerHTML = '';
                        $datalist.append(ul);
                        // 2、生成分页
                        page.innerText = '';
                        //显示当前类别的所有商品总数
                        total.innerText = res_cate.total;
                        //显示列表页顶部信息
                        total_num.innerText = res_cate.total;
                        single_page.innerText = '';
                        single_page.innerText = pageNo;
                        //加载数据前必须清空前面的数据
                        var pageQty = Math.ceil(res_cate.total/res_cate.qty);
                        for(var i=1;i<=pageQty;i++){
                            var span = document.createElement('span');
                            span.innerHTML = i;

                            if(i === pageNo){
                                span.className = 'active';
                            }
                            page.appendChild(span);
                        }; 
                        ul.addEventListener('click',function(e){
                            e = e || window.event;
                            var target = e.target || e.srcElement;
                         
                            //购物车功能 1、保存被选中的商品信息到cookie 2、点击飞入购物车动画
                            if(target.className.toLowerCase()==='addcar_btn'){
                                //5-1 购物车最后将在aplication标签页面会显示所有的产品信息
                                //不管是首页传递参数生成的列表页还是本页生成的产品列表，
                                //共用一个叫carlist的cookie
                                var id = target.parentNode.getAttribute('data-guid');
                                //判断carlist中是否存在相同的商品信息
                                //判断循环是否跑完
                                for(var i = 0; i<carlist.length; i++){
                                    if(carlist[i].id === id){
                                        break;
                                    }
                                }
                                //如果点击的产品信息经过上面的循环发现并没有这个产品在购物车的话
                                //就创建一个对象，并且计数为1；
                                if(i === carlist.length){                    
                                    var goods = {
                                        id:id,
                                        img:target.parentNode.children[0].children[0].src,
                                        title:target.parentNode.children[1].innerText,
                                        ourprice:target.parentNode.children[4].innerText,
                                        listprice:target.parentNode.children[5].innerText,
                                        shopname:target.parentNode.children[6].innerText,
                                        desc:target.parentNode.children[2].innerText,
                                        qty:1
                                    }
                                    carlist.unshift(goods);
                                }else{
                                    //若已经存在产品信息：数量加1
                                    carlist[i].qty++;
                                }
                                var now = new Date();
                                now.setHours(now.getHours()+1);
                                document.cookie =  'carlist=' + JSON.stringify(carlist) + ';expires=' + now + ';path=/';
                            }
                        }); 
                        
                        // 飞入购物车动画jQuery代码开始
                        $(ul).on('click','.addcar_btn',function(){
                            //获取事件源对象.addcar按钮DOM节点最近的li父级元素$li
                            var $li = $(this).closest('li');
                            // 获取当前$li下面的子元素img
                            var $targetimg = $li.find('img');

                            var $copyimg = $targetimg.clone();

                            $copyimg.css({
                                position:'absolute',
                                left:$targetimg.offset().left,
                                top:$targetimg.offset().top,
                                width:$targetimg.outerWidth()
                            });
                            $('body').append($copyimg);
                            // 动画
                            $copyimg.animate({
                                left:$('#asider .shiftbtn').offset().left,
                                top:$('#asider .shiftbtn').offset().top,
                                width:30,
                                height:30
                            },function(){
                                // 动画完成后，删除复制的图片
                                $copyimg.remove();
                            });
                        });
                    }
                });
            };
        };
        // 功能6 热销产品的ajax加载和添加到购物车功能
       
        // 第一步获取容器
        var $hotgoods = $('#hotsell .li_style0'); 
        // 第二步：避免全局污染利用匿名函数发起对应类别的ajax请求in jQuery
        (function(){
            // var category = arr[1];当前页面的category
            var index = 0;
            var qty = 5;
            $.ajax({
                type:"post",
                url:'../api/category.php',
                data:{
                    category:category,
                    index:index,
                    qty:qty
                },
                success:function(res){
                    var res_hot = JSON.parse(res);
                    console.log(res_hot);
                    var ul = document.createElement('ul');
                    ul.innerHTML = res_hot.data.map(function(item){
                        return`
                            <li data-guid="${item.id}">
                                <a href="goods.html?id=${item.id}">
                                    <img src="${item.img}" alt="" />
                                </a>
                                <h3>${item.title}</h3>
                                <h4>${item.desc}</h4>
                                <p class="unit">￥</p>
                                <p class="ourprice">${item.ourprice}</p>
                                <p class="listprice">${item.listprice}</p>
                                <h5>${item.shopname}</h5>
                                <a href="javascript:;" class="addcar_btn"><i></i>加入购物车</a>
                                <a href="javascript:;" class="focuson"><span></span>关注商品</a>
                             </li>
                        `
                    }).join('');
                    $hotgoods.append(ul);
                    ul.addEventListener('click',function(e){
                        e = e || window.event;
                        var target = e.target || e.srcElement;
                     
                        //五购物车功能 1、保存被选中的商品信息到cookie 2、点击飞入购物车动画
                        if(target.className.toLowerCase()==='addcar_btn'){
                            //5-1 购物车最后将在aplication标签页面会显示所有的产品信息
                            //不管是首页传递参数生成的列表页还是本页生成的产品列表，
                            //共用一个叫carlist的cookie
                            var id = target.parentNode.getAttribute('data-guid');
                            //判断carlist中是否存在相同的商品信息
                            //判断循环是否跑完
                            for(var i = 0; i<carlist.length; i++){
                                if(carlist[i].id === id){
                                    break;
                                }
                            }
                            //如果点击的产品信息经过上面的循环发现并没有这个产品在购物车的话
                            //就创建一个对象，并且计数为1；
                            if(i === carlist.length){                    
                                var goods = {
                                    id:id,
                                    img:target.parentNode.children[0].children[0].src,
                                    title:target.parentNode.children[1].innerText,
                                    ourprice:target.parentNode.children[4].innerText,
                                    listprice:target.parentNode.children[5].innerText,
                                    shopname:target.parentNode.children[6].innerText,
                                    desc:target.parentNode.children[2].innerText,
                                    qty:1
                                }
                                carlist.unshift(goods);
                            }else{
                                //若已经存在产品信息：数量加1
                                carlist[i].qty++;
                            }
                            var now = new Date();
                            now.setHours(now.getHours()+1);
                            document.cookie =  'carlist=' + JSON.stringify(carlist) + ';expires=' + now + ';path=/';                          
                        }
                    });

                    // 飞入购物车动画jQuery代码开始
                    $(ul).on('click','.addcar_btn',function(){
                        //获取事件源对象.addcar按钮DOM节点最近的li父级元素$li
                        var $li = $(this).closest('li');
                        // 获取当前$li下面的子元素img
                        var $targetimg = $li.find('img');

                        var $copyimg = $targetimg.clone();

                        $copyimg.css({
                            position:'absolute',
                            left:$targetimg.offset().left,
                            top:$targetimg.offset().top,
                            width:$targetimg.outerWidth()
                        });
                        $('body').append($copyimg);
                        // 动画
                        $copyimg.animate({
                            left:$('#asider .shiftbtn').offset().left,
                            top:$('#asider .shiftbtn').offset().top,
                            width:30,
                            height:30
                        },function(){
                            // 动画完成后，删除复制的图片
                            $copyimg.remove();
                        });
                    });
                }
            });   
        }) ();

        //7、让页面右侧的小购物车加载购物车cookie里面的商品
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