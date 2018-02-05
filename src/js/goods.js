jQuery(function($){
    //1/引入头部HTML文件,包括顶部导航栏，nav ，和产品列表菜单栏
    $('#pageHeader').load('../html/header.html');

    //2/ 获取列表切换的父级元素
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
    // var $coloritem =  $colorlist.find('a'); console.log($coloritem);
    $colorlist.on('click','a',function(){
        console.log($(this));
        $(this).addClass('border').closest('span').siblings().find('a').removeClass('border');
    });

});