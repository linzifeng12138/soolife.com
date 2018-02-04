jQuery(function($){
    // 实现点击切换隐藏二级菜单栏
  
    $('#catelist h3').on('click',function(){
        $('#catelist .tablist1').slideToggle(250);
    });

    // 实现吸顶效果
    var toptimer;//定义全局变量
    $(window).scroll( function() {
        clearTimeout(toptimer);//必须要有这句
        if( $(document).scrollTop() > 120 ){
            toptimer = setTimeout(function(){
               
                $("#mainnav").addClass("mainnav_top");
            },16);
        }else{
            toptimer = setTimeout(function(){
                $("#mainnav").removeClass("mainnav_top");
            },16);
        }
    });
});