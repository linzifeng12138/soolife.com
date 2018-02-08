//按需求加载板块
require(['config'],function(){
    require(['jquery','lzfbanner','common'],function($,ban,com){
        //功能1：引入头部HTML文件,包括顶部导航栏，nav ，和产品列表菜单栏
        $('#pageHeader').load('html/header.html');
        //注意是以index.html为基准发起请求
        //
        // 功能2：实现点击切换隐藏二级菜单栏
        $('#catelist h3').on('click',function(){
            $('#catelist .tablist1').slideToggle(250);
        });

        // 功能3：图片偏移动画
        //注意给img样式设置绝对定位，以及父级元素设置相对定位
        $('.picframe').on('mouseenter','img',function(){
            $(this).animate({
                left:-5
            },90);
        }).on('mouseleave','img',function(){
            $(this).animate({
                left:0
            },90);
        });
        //功能4：首页轮播图代码：
        $('#banner').lzfbanner({
            imgs:['img/ban2.jpg','img/ban3.jpg','img/ban4.jpg','img/ban5.png','img/ban6.png','img/ban8.png','img/ban7.jpg'],
            index:1
        });
        
        //功能5：根据产品类别跳转到商品列表页list.html
        var $tab = $('#catelist .tablist1');console.log($tab);
        $tab.on('click','li',function(){
            console.log(this);
            var category = this.getAttribute("data-category");
            location.href = "html/list.html"+"?"+"category="+category;
        });
       

        //功能6：开始进行数据生成
        
        // 1f服饰衣帽
        var $clothes = $('#clothes .data_clothes');
        console.log($clothes);
        (function(){
            var category = 'clothes';
            var index = 0;
            var qty = 7;
            $.ajax({
                type:"post",
                url:'api/category.php',
                data:{
                    category:category,
                    index:index,
                    qty:qty
                },
                success:function(res){
                    var res_clo = JSON.parse(res);
                    console.log(res_clo);
                    var ul = document.createElement('ul');
                    ul.classList.add('right_box_sty1');
                    ul.innerHTML = res_clo.data.map(function(item){
                        return`
                            <li data-guid="${item.id}">
                                <a href="html/goods.html?id=${item.id}">
                                    <img src="${item.img_index}" alt="" />
                                </a>
                            </li>
                        `
                    }).join('');
                    $clothes.append(ul);
                }
            });   
        }) ();

        // 2f食品酒水
        // 第一步获取容器
        var $foods = $('#foods .data_foods'); 

        // 第二步：避免全局污染利用匿名函数发起对应类别的ajax请求in jQuery
        (function(){
            var category = 'food';
            var index = 0;
            var qty = 7;
            $.ajax({
                type:"post",
                url:'api/category.php',
                data:{
                    category:category,
                    index:index,
                    qty:qty
                },
                success:function(res){
                    var res_food = JSON.parse(res);
                    console.log(res_food);
                    var ul = document.createElement('ul');
                    ul.classList.add('right_box_sty2');
                    ul.innerHTML = res_food.data.map(function(item){
                        return`
                            <li data-guid="${item.id}">
                                <a href="html/goods.html?id=${item.id}">
                                    <img src="${item.img_index}" alt="" />
                                </a>
                            </li>
                        `
                    }).join('');
                    $foods.append(ul);
                }
            });   
        }) ();

        // 3f 母婴玩具
        // 第一步获取容器
        var $baby = $('#baby .data_baby'); 

        // 第二步：避免全局污染利用匿名函数发起对应类别的ajax请求in jQuery
        (function(){
            var category = 'baby';
            var index = 0;
            var qty = 7;
            $.ajax({
                type:"post",
                url:'api/category.php',
                data:{
                    category:category,
                    index:index,
                    qty:qty
                },
                success:function(res){
                    var res_baby = JSON.parse(res);
                    console.log(res_baby);
                    var ul = document.createElement('ul');
                    ul.classList.add('right_box_sty3');
                    ul.innerHTML = res_baby.data.map(function(item){
                        return`
                            <li data-guid="${item.id}">
                                <a href="html/goods.html?id=${item.id}">
                                    <img src="${item.img_index}" alt="" />
                                </a>
                            </li>
                        `
                    }).join('');
                    $baby.append(ul);
                }
            });   
        }) ();
        
        // 4f 日用百货
        // 第一步获取容器
        var $life = $('#life .data_life'); 

        // 第二步：避免全局污染利用匿名函数发起对应类别的ajax请求in jQuery
        (function(){
            var category = 'dairy';
            var index = 0;
            var qty = 7;
            $.ajax({
                type:"post",
                url:'api/category.php',
                data:{
                    category:category,
                    index:index,
                    qty:qty
                },
                success:function(res){
                    var res_life = JSON.parse(res);
                    console.log(res_life);
                    var ul = document.createElement('ul');
                    ul.classList.add('right_box_sty4');
                    ul.innerHTML = res_life.data.map(function(item){
                        return`
                            <li data-guid="${item.id}">
                                <a href="html/goods.html?id=${item.id}">
                                    <img src="${item.img_index}" alt="" />
                                </a>
                            </li>
                        `
                    }).join('');
                    $life.append(ul);
                }
            });   
        }) ();
        
        // 5f 智能电配
        // 第一步获取容器
        var $elec = $('#elec .data_elec'); 

        // 第二步：避免全局污染利用匿名函数发起对应类别的ajax请求in jQuery
        (function(){
            var category = 'phone';
            var index = 0;
            var qty = 7;
            $.ajax({
                type:"post",
                url:'api/category.php',
                data:{
                    category:category,
                    index:index,
                    qty:qty
                },
                success:function(res){
                    var res_elec = JSON.parse(res);
                    console.log(res_elec);
                    var ul = document.createElement('ul');
                    ul.classList.add('right_box_sty1');
                    ul.innerHTML = res_elec.data.map(function(item){
                        return`
                            <li data-guid="${item.id}">
                                <a href="html/goods.html?id=${item.id}">
                                    <img src="${item.img_index}" alt="" />
                                </a>
                            </li>
                        `
                    }).join('');
                    $elec.append(ul);
                }
            });   
        }) ();
        
        // 6f 化妆
        // 第一步获取容器
        var $makeup = $('#makeup .data_makeup'); 

        // 第二步：避免全局污染利用匿名函数发起对应类别的ajax请求in jQuery
        (function(){
            var category = 'makeup';
            var index = 0;
            var qty = 7;
            $.ajax({
                type:"post",
                url:'api/category.php',
                data:{
                    category:category,
                    index:index,
                    qty:qty
                },
                success:function(res){
                    var res_makeup = JSON.parse(res);
                    console.log(res_makeup);
                    var ul = document.createElement('ul');
                    ul.classList.add('right_box_sty1');
                    ul.innerHTML = res_makeup.data.map(function(item){
                        return`
                            <li data-guid="${item.id}">
                                <a href="html/goods.html?id=${item.id}">
                                    <img src="${item.img_index}" alt="" />
                                </a>
                            </li>
                        `
                    }).join('');
                    $makeup.append(ul);
                }
            });   
        }) ();
        
        // 7f 箱包饰品
        // 第一步获取容器
        var $bag = $('#bag .data_bag'); 

        // 第二步：避免全局污染利用匿名函数发起对应类别的ajax请求in jQuery
        (function(){
            var category = 'bags';
            var index = 0;
            var qty = 8;
            $.ajax({
                type:"post",
                url:'api/category.php',
                data:{
                    category:category,
                    index:index,
                    qty:qty
                },
                success:function(res){
                    var res_bag = JSON.parse(res);
                    console.log(res_bag);
                    var ul = document.createElement('ul');
                    ul.classList.add('right_box_sty5');
                    ul.innerHTML = res_bag.data.map(function(item){
                        return`
                            <li data-guid="${item.id}">
                                <a href="html/goods.html?id=${item.id}">
                                    <img src="${item.img_index}" alt="" />
                                </a>
                            </li>
                        `
                    }).join('');
                    $bag.append(ul);
                }
            });   
        }) ();

        
         // 8f 户外运动
        // 第一步获取容器
        var $sport = $('#sport .data_sport'); 

        // 第二步：避免全局污染利用匿名函数发起对应类别的ajax请求in jQuery
        (function(){
            var category = 'sports';
            var index = 0;
            var qty = 7;
            $.ajax({
                type:"post",
                url:'api/category.php',
                data:{
                    category:category,
                    index:index,
                    qty:qty
                },
                success:function(res){
                    var res_sport = JSON.parse(res);
                    console.log(res_sport);
                    var ul = document.createElement('ul');
                    ul.classList.add('right_box_sty2');
                    ul.innerHTML = res_sport.data.map(function(item){
                        return`
                            <li data-guid="${item.id}">
                                <a href="html/goods.html?id=${item.id}">
                                    <img src="${item.img_index}" alt="" />
                                </a>
                            </li>
                        `
                    }).join('');
                    $sport.append(ul);
                }
            });   
        }) ();
    });
});