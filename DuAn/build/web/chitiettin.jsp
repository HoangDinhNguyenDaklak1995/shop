<%-- 
    Document   : chitiettin
    Created on : Dec 30, 2016, 9:44:14 PM
    Author     : PhuocDanh
--%>

<%@page import="com.javaweb.model.Tintuc"%>
<%@page import="com.javaweb.service.TinTucService"%>
<%@page import="com.javaweb.model.Loaitintuc"%>
<%@page import="com.javaweb.service.LoaiTinTucService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tin Tức</title>
        <%@include file="includes/headtag.jsp" %> 
        <link href="css/styles_1.css" rel="stylesheet" type="text/css"/>      
    </head>
    <body>
        <%@include file="includes/header-tintuc.jsp" %>

        <!------------------------------------------------------------------------------------------->

        <!-- bắt đầu menu tin tức-->
        <%            
            LoaiTinTucService LTTService = new LoaiTinTucService();
            ArrayList<Loaitintuc> ListLoaiTinTuc = null;
            ListLoaiTinTuc = LTTService.GetAllLoaiTinTuc();
            TinTucService TTService = new TinTucService();
            ArrayList<Tintuc> ListTinTuc = null;
            ListTinTuc = TTService.GetAllListTinTuc();
            String folderupload = getServletContext().getInitParameter("file-upload");
            UserService USService = new UserService();
            Tintuc tin = new Tintuc();
            tin = TTService.GetTinTucById(request.getParameter("idtin"));
        %>
        <div class="navbar navbar-default navbar-static-top" style="background-color: #F9F5F0;margin-bottom: 30px;border: 1px solid #ddd;box-shadow: 5px 2px 5px #888888;">
            <div class="container">
                <div id='cssmenu'>
                    <ul>
                        <li class='active'><a href='tintuc.jsp'>Home</a></li>
                            <%
                                for (int i = 0; i < ListLoaiTinTuc.size(); i++) {
                                    Loaitintuc LTT = ListLoaiTinTuc.get(i);
                            %>
                        <li><a href='chuyenmuctin.jsp?idloaitin=<%= LTT.getIdLoaiTinTuc() %>'><%= LTT.getTenLoaiTinTuc()%></a></li>
                            <%
                                }
                            %>
                    </ul>
                </div>
            </div>
        </div>
        <!--kết thúc menu tin tức-->

        <!------------------------------------------------------------------------------------------->
        <section class="container" style="margin-bottom: 50px">
            <div class="row">
                <div class="col-md-8">
                    <h2 class="text-center" style="font-weight: bold;margin: 30px 0px;" ><%= tin.getTieuDe()%></h2>
                    <section class="noidungtin" style="margin-top: 50px;">
                        <span class="pull-left" style="color: #003399"><%= tin.getNgayDang() %></span></br>
                        <span><%= tin.getNoiDung()%></spam>
                        
                        <%
                            Users us = USService.GetUsersByID(tin.getUsers().getIdUser().toString());
                        %>
                        <span class="pull-right"><h4 style="font-weight: bold"><%= us.getFullName() %></h4></span>
                    </section>
                </div>
                <div class="col-md-4">
                    <div class="panel-group">
                        <div class="panel panel-default">
                            <div class="panel-heading text-center" style="font-family: cursive" >
                                <span style="color: #003399;font-size: 15px;line-height: 20px;height: 30px">Bài Đăng Mới Nhất</span>
                                <section class="text-center">
                                    <a href="chitiettin.jsp?idtin=<%= ListTinTuc.get(0).getIdTinTuc()%>">
                                        <img class="img-thumbnail" src="${pageContext.request.contextPath}/<%=folderupload%><%= ListTinTuc.get(0).getImage()%>" alt=""/><br>
                                    </a>
                                    <a href="chitiettin.jsp?idtin=<%= ListTinTuc.get(0).getIdTinTuc()%>">
                                        <span class="text-center"><%= ListTinTuc.get(0).getTieuDe()%></span>
                                    </a>
                                </section>
                            </div>
                            <div class="panel-body">
                                <ul>
                                    <%
                                        for (int j = 1; j < 10; j++) {
                                            Tintuc tt = ListTinTuc.get(j);
                                    %>
                                    <li style="list-style: none; border-bottom: 1px solid #ddd;margin-bottom: 5px;float: left">
                                        <img class="img-thumbnail" src="${pageContext.request.contextPath}/<%=folderupload%><%= tt.getImage()%>" alt="" width="110px" height="auto"/>
                                        <a href="chitiettin.jsp?idtin=<%=tt.getIdTinTuc()%>">
                                            <span style="float: right; width:  200px;margin-top: 10px"class="text-center"><%= tt.getTieuDe()%></span>
                                        </a>
                                    </li>
                                    <%
                                        }
                                    %>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%@include file="includes/footer.jsp" %>
</body>
</html>