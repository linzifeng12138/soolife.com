jQuery(function($){

    //引入头部HTML文件,包括顶部导航栏，nav ，和产品列表菜单栏
    $('#pageHeader').load('html/header.html');
    //注意是以index.html为基准发起请求
    //
    // 实现点击切换隐藏二级菜单栏
    $('#catelist h3').on('click',function(){
        $('#catelist .tablist1').slideToggle(250);
    });

    // 图片偏移动画
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
    //首页轮播图代码：
    $('#banner').lzfbanner({
        imgs:['img/ban2.jpg','img/ban3.jpg','img/ban4.jpg','img/ban5.png','img/ban6.png','img/ban8.png','img/ban7.jpg'],
        index:1
    });

});