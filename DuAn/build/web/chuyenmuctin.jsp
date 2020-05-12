<%-- 
    Document   : chuyenmuctin
    Created on : Jan 2, 2017, 11:08:17 PM
    Author     : PhuocDanh
--%>

<%@page import="com.javaweb.model.Tintuc"%>
<%@page import="com.javaweb.service.TinTucService"%>
<%@page import="com.javaweb.service.LoaiTinTucService"%>
<%@page import="com.javaweb.model.Loaitintuc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chuyên Mục Tin Tức</title>
        <%@include file="includes/headtag.jsp" %> 
        <link href="css/styles_1.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="includes/header-tintuc.jsp" %>

        <%            request.setCharacterEncoding("UTF-8");
            LoaiTinTucService LTTService = new LoaiTinTucService();
            ArrayList<Loaitintuc> ListLoaiTinTuc = null;
            ListLoaiTinTuc = LTTService.GetAllLoaiTinTuc();
            TinTucService TTService = new TinTucService();
            ArrayList<Tintuc> ListTinTuc = null;
            ArrayList<Tintuc> ListTinTucTheoLoai = null;
            ListTinTuc = TTService.GetAllListTinTuc();
            int pageSize = 3;
            int pageNumber = 1;
            String Id = request.getParameter("idloaitin");
            if (request.getParameter("idloaitin") == null) {
                Id = "1";
            }
            if (request.getParameter("pagenumber") != null) {
                session.setAttribute("pagenumber", request.getParameter("pagenumber"));
                pageNumber = Integer.parseInt(request.getParameter("pagenumber"));
            } else {
                session.setAttribute("pagenumber", "1");
            }
            ListTinTucTheoLoai = TTService.GetAllTinTucTheoLoaiTin(pageSize, pageNumber, Integer.parseInt(Id));
            int pageCount = (TTService.usercount / pageSize)
                    + (TTService.usercount % pageSize > 0 ? 1 : 0);

            String nextPage = (pageCount > pageNumber
                    ? (pageNumber + 1) : pageNumber) + "";
            String prePage = (pageNumber <= 1 ? 1 : pageNumber - 1) + "";
            Loaitintuc LTTT = LTTService.GetLoaiTinTheoId(Integer.parseInt(Id));
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
                        <li><a href='chuyenmuctin.jsp?idloaitin=<%= LTT.getIdLoaiTinTuc()%>'><%= LTT.getTenLoaiTinTuc()%></a></li>
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
                    <span style="font-weight: bold">Trang Chủ &rarr; <%= LTTT.getTenLoaiTinTuc()%> </span>
                    <section>
                        <div>
                            <%
                                for (int i = 0; i < ListTinTucTheoLoai.size(); i++) {
                                    Tintuc tt = ListTinTucTheoLoai.get(i);
                            %>
                            <div class="row">
                                <div style="margin-bottom: 30px"></div>
                                <div class="col-md-5">
                                    <img class="img-thumbnail" src="${pageContext.request.contextPath}/<%=folderupload%><%= tt.getImage()%>" alt="" />
                                </div>
                                <div class="col-md-6">
                                    <span ><h4 style="font-family: serif;font-weight: bold"><%= tt.getTieuDe()%></h4></span>
                                    <span><h5 style="margin-top: 20px;line-height: 20px"><%= tt.getTomTatTin()%></h5></span>
                                    <div style="margin-top: 20px">
                                        <a  href="chitiettin.jsp?idtin=<%=tt.getIdTinTuc()%>">
                                            <span >Xem Thêm...</span>
                                        </a>
                                    </div>

                                </div>
                            </div>
                            <%
                                }
                            %>
                        </div>
                        <div class="text-center" style="margin-top: 30px">
                            <ul class="pagination pager ">
                                <li><a  aria-label="Previous" href="?pagenumber=<%=prePage%> " > <span aria-hidden="true">&laquo;</span></a></li>
                                    <%

                                        for (int j = 1; j <= pageCount; j++) {
                                            if (pageNumber == j) {
                                    %>
                                <li class="active"><a href="?pagenumber=<%=j%>"><%=j%></a></li>
                                    <%
                                    } else {
                                    %>                                   
                                <li ><a href="?pagenumber=<%=j%>"><%=j%></a></li>

                                <%
                                        }
                                    }
                                %>
                                <li ><a aria-label="Next" href="?pagenumber=<%=nextPage%>"><span aria-hidden="true">&raquo;</span></a></li>
                            </ul>
                        </div>

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
