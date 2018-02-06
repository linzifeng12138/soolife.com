jQuery(function($){
    //引入头部HTML文件,包括顶部导航栏，nav ，和产品列表菜单栏
    $('#pageHeader').load('../html/header.html');

     // 实现点击切换隐藏二级菜单栏
    $('#catelist h3').on('click',function(){
        $('#catelist .tablist1').slideToggle(250);
    });

    // 实现飞入购物车车的动画效果
       
});