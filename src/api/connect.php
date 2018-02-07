<?php
    // 1、变量封装
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "soolife";

    // 2、创建连接---实例化对象--面向对象写法
    $conn = new mysqli($servername, $username, $password, $dbname);
    
    // 3、检测连接--固定写法
    // PHP面向对象：知识点1：
    // 调用成员属性/方法
    // 在实例化对象后，我们可以使用‘->’操作该对象调用成员属性/方法
    if ($conn->connect_error) {
        die("连接失败: " . $conn->connect_error);
    }
    // echo "success";
    
    // 4、 查询前设置编码，防止输出乱码-固定写法
    $conn->set_charset('utf8');
?>