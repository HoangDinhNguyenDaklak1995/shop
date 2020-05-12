<%-- 
    Document   : deleteUser
    Created on : Oct 29, 2016, 11:46:57 AM
    Author     : TAO-PC
--%>

<%@page import="com.javaweb.service.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Xóa Sản Phẩm</title>
        
    </head>
    <body>
       <%
           UserService us=new UserService();
           String iduser = request.getParameter("iduser");
           boolean kt = us.DeleteUser(Integer.parseInt(iduser));
           if(kt){
               response.sendRedirect("QuanLyUser.jsp");
           }
       %>
    
    </body>
</html>