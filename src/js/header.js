jQuery(function($){
    // 实现点击切换隐藏二级菜单栏
    console.log($('#catelist h3'));
    $('#catelist h3').on('click',function(){
        console.log(222);
        $('#catelist .tablist1').slideToggle(250);
    });
});