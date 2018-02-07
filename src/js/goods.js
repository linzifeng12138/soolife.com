require(['config'],function(){
    require(['jquery','lzfzoom','common'],function($,zoom,com){
        //1/引入头部HTML文件,包括顶部导航栏，nav ，和产品列表菜单栏
        $('#pageHeader').load('../html/header.html');

        //2/ 商品详情列表页切换
        //获取列表切换的父级元素
        var $tablist = $('#detail .showbox');console.log($tablist);
        var $tabitem = $tablist.find('ul li');console.log($tabitem);
        var $content = $tablist.find('.goodsbigbox div');console.log($content);

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
        var $colorlist =  $('#detail .colorbox');console.log($colorlist);
        $colorlist.find('a').eq(0).addClass('border');
       
        $colorlist.on('click','a',function(){
            console.log($(this));
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
        //事件委托,点击左右方向标切换产品列表
        container.onclick = function(e){
            e = e || window.event;
            var target = e.target || e.srcElement;
            if(target.className.toLowerCase()==="left_arr"){
                // console.log(666);
                 index--;
                 display();
            }else if(target.className.toLowerCase()==="right_arr"){
                  // console.log(666);
                 index++;
                 display();
            }
        }
        //5//左右切换小图功能代码结束
    });
});

