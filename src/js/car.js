require(['config'],function(){
    require(['jquery','common'],function($,com){
        // 显示购物车的信息到HTML结构里面
        //先设置一个空的数组，作用是读取cookie
        var carlist =[];
        var cookies = document.cookie.split('; ');
        if(cookies.length){
            cookies.forEach(function(item){
                var arr = item.split('=');
                if(arr[0]==='carlist'){
                    carlist = JSON.parse(arr[1]);
                }
            });
        }
        console.log(carlist);
        //页面顶部黄色显示区域的产品数量
        var totalQty  = document.querySelector('.totalnum .totalqty');

        var acountQty = document.querySelector('.acount_qty');

        var totalHere = document.querySelector('.totalhere i');
        var discount  = document.querySelector('.discount i');

        // 获取数据盛放的父级元素
        var maincar = document.querySelector('#maincar .container');
        console.log(maincar);
        var cost = 0;//单项产品总花费
        var totalcost = 0;//所有产品总花费金额
        var totalqty = 0;//用户购买产品总数量
        var totalsave = 0;//原价减去市价乘以总数量
        var ul = document.createElement('ul');
        ul.innerHTML = carlist.map(function(item){
            cost = (item.ourprice*item.qty).toFixed(2);
            totalcost += item.ourprice*item.qty;
            totalqty += item.qty;
            totalsave += (item.listprice-item.ourprice)*item.qty;
        
            return`
                <li data-guid="${item.id}">
                    <div class="item_title">
                        <input type="checkbox" class="onecheck" checked/>
                        <h3 class="shop_name">${item.shopname}</h3>
                    </div>
                    
                    <div class="maincontent">
                        <input type="checkbox" class="onecheck" checked/>

                        <img src="${item.img}" alt="" />

                        <span class="information">
                            ${item.title}&nbsp;&nbsp;&nbsp;
                            ${item.desc}
                        </span>

                        <span class="price">￥
                            <i class="ourprice">${item.ourprice}</i>
                        </span>

                        <span class="starcoin">0</span>

                        <span class="goodsnum">
                            <div class="minus">-</div>
                            <input type="text"  value="${item.qty}" class="qty" />
                            <div class="plus">+</div>
                        </span>

                        <span class="total_cost">
                            <i>0</i>
                            <i>+ ￥</i>
                            <span class="real_cost">${cost}</span>
                        </span>

                        <span class="delete">
                            <a href="javascript:;" class="del_btn"></a>
                        </span>
                    </div>         
                </li>
            `
        }).join('');
        maincar.appendChild(ul);
        //页面顶部黄色显示区域的产品数量
        totalQty.innerText = totalqty;
        acountQty.innerText = totalqty;
        totalHere.innerText = totalcost.toFixed(2);
        discount.innerText = totalsave.toFixed(2);

        //删除购物车的单个商品代码开始--事件委托
        $(maincar).on('click','.del_btn',function(){
            var currentLi = this.parentNode.parentNode.parentNode;
            console.log(currentLi);
            var guid = currentLi.getAttribute('data-guid');
            console.log(guid);
            //删除商品前先让客户确认一下:   window.confirm()
            if(confirm('您真的要删除该商品吗？')){
                for(var i = 0 , len = carlist.length; i<len; i++){
                    if(carlist[i].id === guid){
                         carlist.splice(i,1);
                         break;
                    }
                }
                var now = new Date();
                now.setHours(now.getHours()+1);
                document.cookie = 'carlist=' + JSON.stringify(carlist) + ';expires=' + now + ';path=/';
                //注意重新写cookie覆盖前面的记录时必须统一好cookie的保存路径
                //删除DOM节点
                currentLi.parentNode.removeChild(currentLi);
                location = location;
            }   
        });

        // 页面底部猜你喜欢列表左右切换功能开始
        var guessbox = document.querySelector('#guess');
        var index = 0;
        var showWidth = 1200;  
        var $guesshere = $('#guess .datalist');
        // 第二步：避免全局污染利用匿名函数发起对应类别的ajax请求in jQuery
        (function(){
            var category = 'food';
            var index = 0;
            var qty = 30;
            $.ajax({
                type:"post",
                url:'../api/category.php',
                data:{
                    category:category,
                    index:index,
                    qty:qty
                },
                success:function(res){
                    var res_guess = JSON.parse(res);
                    console.log(res_guess);
                    var ul = document.createElement('ul');
                    ul.classList.add('smallList');
                    ul.innerHTML = res_guess.data.map(function(item){
                        return`
                            <li data-guid="${item.id}">
                                <a href="goods.html?id=${item.id}">
                                   <img src="${item.img}"/>
                                </a>
                                <h4 class="guess_goodstitle">${item.title}</h4>
                                <h5 class="guess_price">￥${item.ourprice}</h5>
                            </li>
                        `
                    }).join('');
                    $guesshere.append(ul);
                    var ullist = document.querySelector('#guess .smallList');
                    var length = ullist.children.length;
                    function display(){
                        if(index > Math.ceil(length/4)-1){
                            index = Math.ceil(length/4)-1;
                        }else if(index < 0){
                            index = 0;
                        }
                        let target = -index*showWidth;
                        animate(ullist,{left:target});
                    }
                    //利用jQuery的事件委托方法实现左右切换
                    $(guessbox).on('click','.font_arr',function(){
                        index--;
                        display();
                    }).on('click','.back_arr',function(){
                        index++;
                        display();
                    });
                    //左右切换小图功能代码结束                
                }
            });   
        }) ();       
    });
});