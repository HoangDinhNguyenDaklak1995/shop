<%-- 
    Document   : thank
    Created on : Dec 20, 2016, 8:32:29 PM
    Author     : PhuocDanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html class="no-js" style="background-image:url(images/hinh-nen-tet.jpg);">

      <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Chúc Mừng Năm Mới </title>
    <meta name="description" content="Personal Website of Ali Cigari, jack of all trades...">
    <meta name="viewport" content="initial-scale=1.0,width=device-width,user-scalable=0">       
    <link href="css/countdowncube.css" rel="stylesheet" type="text/css"/>
    <style class="inlinestyle">#counter
        {
            margin: 10 auto;
            text-align: center;
        }

    </style>
</head>
<body>

    <h1 style="
        text-align: center;
        color:#FF165D;
        " >Chỉ còn đúng </h1>
    <div id='counter'></div>
    <h1 style="
        text-align: center;
        color:#FF165D;
        " >Mừng Năm Mới Xuân Đinh Dậu </h1>
    <h2 style="
        text-align: center;" > Cảm ơn bạn đã ủng hộ website trong thời gian vừa qua </h2>

    <p style="
       text-align: center;
       ">Click vào đây để trở lại trang chủ :) <a href="index.jsp">Trang Chủ</a>.</p>


    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="js/countdowncube.js" type="text/javascript"></script>
    
    <script>
        $('#counter').countdownCube({target: new Date('January 28	, 2017 00:00:00'), cubeSize: 50});
    </script>
</body>

<audio autoplay="true">
    <source src="DiepKhucMuaXuan-LamTruong_846.mp3" type="audio/mpeg">
    Your browser does not support the <code>audio</code> tag.
</audio>
</html>


