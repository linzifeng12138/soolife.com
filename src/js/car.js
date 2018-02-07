require(['config'],function(){
    require(['jquery','common'],function($,com){
        // 一、 实现热销产品列表左右切换功能开始
        var guessbox = document.querySelector('#guess');
        // var focus = document.querySelector('#detail .focus');
        var ullist = document.querySelector('#guess .smallList');
        var length = ullist.children.length;
        var index = 0;
        // var showWidth = focus.offsetWidth;
        var showWidth = 1200;  
        function display(){
            if(index > Math.ceil(length/4)-1){
                index = Math.ceil(length/4)-1;
            }else if(index < 0){
                index = 0;
            }
            let target = -index*showWidth;
            animate(ullist,{left:target});
        }
        //利用jQuery的事件委托方法实现左右切换
        $(guessbox).on('click','.font_arr',function(){
            index--;
            display();
        }).on('click','.back_arr',function(){
            index++;
            display();
        });
        //左右切换小图功能代码结束
    });
});