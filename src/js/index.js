jQuery(function($){
    // 图片偏移动画
    // $('.frame').on('mouseenter', function() {
    //     $(this).find('.move').animate({
    //         left: -6
    //     }, 100);
    // }).on('mouseleave', function() {
    //     $(this).find('.move').animate({
    //         left: 0
    //     }, 100);
    // });
    // console.log($('#fivelist'));
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
    console.log($('.picframe'));

});