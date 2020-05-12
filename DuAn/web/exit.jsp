<%-- 
    Document   : exit
    Created on : Nov 27, 2016, 8:51:05 AM
    Author     : TAO-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng Xuất</title>
    </head>
    <body>
        <section>
            <%
                if (session != null) {
                    session.removeAttribute("IdUser");
                    response.sendRedirect("index.jsp");
                }
            %>
            To Login again <a href="dangnhap.jsp">Click here</a>
        </section>
    </body>
</html>
