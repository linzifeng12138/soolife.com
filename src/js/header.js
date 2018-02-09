
jQuery(function($){
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
    
    //首页、列表页、详情页的右侧点击切换显示小购物车列表
    //注意该部分的HTML结构仍然在首页、列表页和详情页之中
    //对应的样式css还是在header.css之中
    $('#asider .shiftbtn').on('click',function(){
        $('#asider .shopcart').toggleClass('onclick');
        $('#asider .contentlist').fadeToggle();
    });  

    //返回顶部jQuery写法
    $('.backtopbtn').on('click',function(){
        $("html,body").animate({scrollTop:0},300);
    });
});