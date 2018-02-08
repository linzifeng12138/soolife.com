require(['config'],function(){
    require(['jquery','common'],function($,com){
       console.log(666);
       var cookie = document.getElementById('cookie');

       $('.loginbtn').on('click',function(){
            var _username = $('.username').val().trim();
            var _password = $('.password').val().trim();
            $.ajax({
                url:'../api/login.php',
                data:{
                    username:_username,
                    password:_password
                },
                success:function(data){
                    if(data === 'fail'){
                        alert('不存在该用户，请重试！');
                        location=location;//刷新当前页面，避免重复注册时的信息bug
                        return false;
                    }
                    console.log(data);
                    if(data === 'ok'){
                        if(cookie.checked){
                            var now = new Date();
                            now.setDate(now.getDate()+7);
                            document.cookie = 'username=' + _username + ';expires=' + now.toUTCString() + ';path=/';
                        }else{
                             document.cookie = 'username=' + _username + ';path=/';
                        }
                        location = "../index.html";
                    }
                }
            })
       });
    });
});