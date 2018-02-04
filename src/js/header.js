jQuery(function($){
    // 实现点击切换隐藏二级菜单栏
  
    $('#catelist h3').on('click',function(){
        $('#catelist .tablist1').slideToggle(250);
    });
});