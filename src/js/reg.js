require(['config'],function(){
    require(['jquery','common'],function($,com){
        //生成随机四位数的动态验证码
        var shuiji = document.querySelector('.shuiji').innerText = vCode();
        console.log(shuiji);
             
        $('#regbody .phoneNumber').on('change',function(){
            var _username = $('.phoneNumber').val();
            _username = _username.trim();
            console.log(_username);
            //判断用户名输入是否合乎规范----前端解决：
            var reg = /\b1[34578]\d{9}\b/g;
            if(!reg.test(_username)){            
                alert('请输入正确的手机号码！');          
                location = location;
                return false;
            }       
            //只有用户输入正确的手机号才执行以下代码
            $.ajax({
                url:'../api/username.php',
                data:{
                    username:_username
                },
                success:function(data){
                    //如果用户名检验发现已存在重复就结束，不让其注册
                    if(data === 'username is fail'){                    
                        alert('用户名已存在，请重新输入');
                        location = location;
                        return false;
                    }; 
                    console.log(data);
                    //只有后端返回提示信息说用户名不存在重复，才允许用户继续注册
                    if(data === 'username is ok'){
                        $('.regbtn').on('click',function(){
                            var _checkCode = $('.checkCode').val().trim();
                            var _password = $('.passWord').val().trim();
                            var _password_con = $('.passwordCon').val().trim();
                            //注意：密码也要去掉前后多余的空格
                            if(_checkCode !== shuiji){
                                alert('请输入正确验证码！');          
                                return false;
                            }
                            var reg = /^[\da-z]{6,11}$/;
                            if(!reg.test(_password)){
                                alert('密码只能是6-11位数字或字母且不能为空');       
                                return false;
                            }
                            if(_password !== _password_con){
                                alert('两次输入的密码必须一致！');
                                return false;
                            }
                            // console.log(999);
                            //2/发起ajax请求到后端数据库验证
                            //3、发送用户名和密码到PHP接口
                            //目的是写入数据库
                            $.ajax({
                                url:'../api/reg.php',
                                data:{
                                    username:_username,
                                    password:_password_con
                                },             
                                success:function(data){
                                    console.log(data);
                                   
                                    if(data === 'reg is ok'){
                                        alert('恭喜注册成功');
                                    }  
                                    location.href = "login.html";                          
                                }
                            });
                        });  
                    }     
                }
            })
        }) 
    });
});