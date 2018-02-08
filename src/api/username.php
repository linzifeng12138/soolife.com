<?php
/**
 * @Author: Marte
 * @Date:   2018-02-08 16:29:01
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-02-08 16:35:21
 */
    include 'connect.php';
    //4、接收来自前端reg.js的用户名，目的是先验证该用户是否已经被注册了
    $username = isset($_REQUEST['username']) ? $_REQUEST['username'] : '';
    //5、查看database中该用户名是否已经存在
    $sql = "select username from soolifeuserdata where username='$username'";
    //6、在实例化对象后，我们可以使用‘->’操作该对象调用成员属性/方法
    //查询并判断
    $result = $conn->query($sql);
    if($result->num_rows>0){
        echo  "username is fail";
        //7-1 如果num_rows>0为true的话，表明数据库已存在相同的用户名，就用echo
        //传递fail信号给前端 
    }
    else {
        echo  "username is ok";
    }
    //如果传过来的用户名经过数据库的查询发现没问题的就给前端回传以下的信息：
    // echo "username is ok"
    // 7、关闭连接
    $conn->close();
?>