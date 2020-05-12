<%-- 
    Document   : tintuc
    Created on : Dec 8, 2016, 2:06:03 PM
    Author     : Nguyễn Chí Tuấn
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
        <script src="js/jquery.bxslider.min.js" type="text/javascript"></script>
        <link href="css/jquery.bxslider_1.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript">
            $(document).ready(function () {
                $('.bxslider').bxSlider({
                    mode: 'fade',
                    captions: true,
                    spped: 2000,
                    auto: true,
                    pause: 5000,
                });
            });
        </script>
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
        <section class="container">
            <div class="row">
                <div class="col-md-8">
                    <section>
                        <ul class="bxslider">
                            <%
                                for (int a = 0; a < 3; a++) {
                                    Tintuc tt = ListTinTuc.get(a);
                            %>
                            <li>
                                <a href="chitiettin.jsp?idtin=<%= tt.getIdTinTuc()%>">
                                    <img src="${pageContext.request.contextPath}/<%=folderupload%><%= tt.getImage()%>" title="<%= tt.getTieuDe()%>" width="750px" height="400px" />
                                </a>
                            </li>
                            <%
                                }
                            %>
                        </ul>
                    </section>
                    <%
                        for (int i = 0; i < ListLoaiTinTuc.size(); i++) {
                            Loaitintuc LTT = ListLoaiTinTuc.get(i);
                            ArrayList<Tintuc> ListTinTuctheoloai = null;
                            ListTinTuctheoloai = TTService.GetSoLuongTinTucTheoLoai(LTT.getIdLoaiTinTuc(), 4);
                    %>
                    <section style="margin-bottom: 50px">

                        <div style="margin-bottom:30px;margin-top: 15px; font-family: cursive;font-size: 20px;color: #0044cc"><%= LTT.getTenLoaiTinTuc()%> </div>


                        <div class="row">
                            <div class="col-md-7">
                                <div class="text-center" style="margin-bottom: 15px">
                                    <span ><h4><%= ListTinTuctheoloai.get(0).getTieuDe()%></h4></span>
                                </div>
                                <div row>
                                    <div class="col-md-7">
                                        <a href="chitiettin.jsp?idtin=<%=ListTinTuctheoloai.get(0).getIdTinTuc()%>">
                                            <img style="margin-top: 15px" class="img-thumbnail pull-left" src="${pageContext.request.contextPath}/<%=folderupload%><%= ListTinTuctheoloai.get(0).getImage()%>" width="200px" >
                                        </a>

                                    </div>
                                    <div class="col-md-5"style="margin-top: 15px">
                                        <span style="margin-top: 15px"><%= ListTinTuctheoloai.get(0).getTomTatTin()%></span>
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-5">

                                <ul style="margin-top: 50px">
                                    <%
                                        for (int b = 1; b < ListTinTuctheoloai.size(); b++) {
                                            Tintuc tintuctheoloai = ListTinTuctheoloai.get(b);
                                    %>
                                    <a href="chitiettin.jsp?idtin=<%=tintuctheoloai.getIdTinTuc()%>" style="hover :color: red">
                                        <li style="list-style: cross-fade;margin-top:20px " ><%= tintuctheoloai.getTieuDe()%></li>
                                    </a>

                                    <%
                                        }
                                    %>                                     
                                </ul>
                            </div>
                        </div>
                        <div style="border-bottom: 1px solid #ddd; margin-top: 50px"></div>  
                    </section>

                    <%
                        }
                    %>
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
