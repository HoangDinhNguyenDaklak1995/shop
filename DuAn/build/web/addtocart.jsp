<%-- 
    Document   : addtocart.jsp
    Created on : Dec 12, 2016, 4:17:45 PM
    Author     : PhuocDanh
--%>

<%@page import="com.javaweb.service.GioHang"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            String idSP = "";
            if(request.getParameter("idsanpham") != null){
                idSP = request.getParameter("idsanpham");
            }
                
            ArrayList<GioHang> listGioHang = new ArrayList();
            if(session.getAttribute("dshang") != null){
                listGioHang = (ArrayList)session.getAttribute("dshang");
            }
                    
            GioHang.ThemVaoGioHang(listGioHang, idSP, -1);
            session.setAttribute("dshang", listGioHang);

            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
