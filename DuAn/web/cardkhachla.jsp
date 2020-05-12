<%-- 
    Document   : cardkhachla
    Created on : Dec 17, 2016, 6:24:34 PM
    Author     : PhuocDanh
--%>

<%-- 
    Document   : dangky
    Created on : Nov 23, 2016, 4:10:40 PM
    Author     : Nguyễn Chí Tuấn
--%>

<%@page import="com.javaweb.model.Sanpham"%>
<%@page import="com.javaweb.service.SanphamService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giỏ Hàng Của Bạn</title>

        <%@include file="includes/headtag-chitietsanpham.jsp" %>
        <%@include file="includes/headtag-dangkydangnhap.jsp" %>
    </head>
    <body>
        <!-- header -->
        <%@include file="includes/header.jsp" %>
        <section class="container" style="margin-top: 70px"> 

            <div class="row ">
                <div class="col-md-6" >
                    
                    <div class="panel panel-default">
                        <div class="panel-heading">Địa Chỉ Giao Hàng Của Quý Khách</div>
                        <div class="panel-body text-center">
                            <%
                                String folderupload8 =  getServletContext().getInitParameter("file-upload");
                                request.setCharacterEncoding("UTF-8");
                            %>
                            <span>Tên Khách Hàng : <%= request.getParameter("FullName") %></span></br>
                            <span>Email : <%= request.getParameter("Email")%></span></br>
                            <span>Địa Chỉ : <%=request.getParameter("DiaChi")%></span></br>
                            <span>Số Điện Thoại : <%=request.getParameter("phone")%></span></br>
                        </div>
                    </div>                   
                </div>
                <form  action="ThanhtoanSeverlet" method="post">
                    <div class="col-md-6">                   
                        <%    if (session.getAttribute("dshang") != null) {
                                ArrayList<GioHang> listGioHang = (ArrayList) session.getAttribute("dshang");
                                SanphamService Spserviec = new SanphamService();
                                double tongtien = 0;
                                if (request.getParameter("removeidsp") != null) {
                                    String removeidsp = request.getParameter("removeidsp");
                                    GioHang.XoaTuGioHang(listGioHang, removeidsp);
                                }
                        %>
                        <div class="panel panel-default">
                            <div class="panel-heading">Thông Tin Đơn Hàng : (<%=listGioHang.size()%>) Sản Phẩm </div>
                            <div class="panel-body">
                                <table class="table-bordered" style="width: 100%;" >
                                    <thead>
                                        <tr style="text-align: center">
                                            <th style="text-align: center">Hình Ảnh</th>                        
                                            <th style="text-align: center">Tên Sản Phẩm</th>                        
                                            <th style="text-align: center">Số Lượng</th>                       
                                            <th style="text-align: center">Thành Tiền</th>                       
                                        </tr>

                                    </thead>
                                    <tbody >
                                        <%
                                            for (int i = 0; i < listGioHang.size(); i++) {
                                                GioHang item = listGioHang.get(i);
                                                Sanpham sp = Spserviec.GetSanPhamTheoId(Integer.parseInt(item.getMaSP()));

                                                if (sp.getGiaKm() == null) {
                                                    tongtien += sp.getGia() * Double.parseDouble(item.getSoLuong());
                                        %>
                                        <tr style="text-align: center">
                                            <td >
                                                <img class="img-thumbnail" src="${pageContext.request.contextPath}/<%=folderupload8%><%= sp.getImage()%>" width="80px" height="110px"/>
                                            </td>
                                            <td><span name="idsp<%=item.getMaSP()%>"><%= sp.getTenSanPham()%></span></td>                        
                                            <td>
                                                <input name="sl<%=item.getMaSP()%>" type="number" value="<%=item.getSoLuong()%>"/>
                                                <a href="showcart.jsp?removeidsp=<%=item.getMaSP()%>">X</a>
                                            </td>                                              
                                            <td><%= sp.getGia() * Double.parseDouble(item.getSoLuong())%></td>
                                        </tr>
                                        <%
                                        } else {
                                            tongtien += sp.getGiaKm() * Double.parseDouble(item.getSoLuong());
                                        %>
                                        <tr style="text-align: center">
                                            <td >
                                                <img class="img-thumbnail" src="${pageContext.request.contextPath}/<%=folderupload8%><%= sp.getImage()%>" width="80px" height="110px"/>
                                            </td>
                                            <td><span name="idsp<%=item.getMaSP()%>"><%= sp.getTenSanPham()%></span></td>                        
                                            <td>
                                                <input name="sl<%=item.getMaSP()%>" type="number" value="<%=item.getSoLuong()%>"/>
                                                <a href="showcart.jsp?removeidsp=<%=item.getMaSP()%>">X</a>
                                            </td>                                              
                                            <td><%= sp.getGiaKm() * Double.parseDouble(item.getSoLuong())%></td>
                                        </tr>
                                        <%
                                            }
                                        %>

                                        <%
                                            }
                                        %>

                                    </tbody>

                                </table>
                                <div>

                                    <span style="color: red;font-size: 20px;margin-top: 16px;text-transform: bold"class="pull-right"  > Tổng Tiền  :  <%= tongtien%> </span>
                                    <input type="hidden" value=" <%= tongtien%>" name="tongtien"/>
                                </div>
                                <%
                                    if (session.getAttribute("IdUser") != null) {
                                %>
                                <input type="hidden" name="iduser" value="<%= session.getAttribute("IdUser")%>"/>
                                <%
                                    }

                                %>
                                <input type="hidden" name="khachla" value="1"/>
                                <input type="hidden" name="ten" value="<%= request.getParameter("FullName") %>"/>
                                <input type="hidden" name="dc" value="<%= request.getParameter("DiaChi") %>"/>
                                <input type="hidden" name="email" value="<%= request.getParameter("Email") %>"/>
                                <input type="hidden" name="sdt" value="<%= request.getParameter("phone") %>"/>
                                <button style="margin: 70px 0px 0px 150px;padding: 10px 80px" type="submit" class="btn btn-primary thanhtoan text-center">Thanh Toán</button>
                            </div>
                        </div>

                        <%} else {
                        %>
                        <div class="panel panel-default">
                            <div class="panel-heading">Thông Tin Đơn Hàng : 0 Sản Phẩm </div>
                            <div class="panel-body">
                                <span>bạn Chưa Lựa Chọn Sản Phẩm Nào....</span>
                            </div>
                            <%
                                }
                            %>

                        </div> 
                    </div>
                </form>

        </section>

        <script src="js/jquery-2.2.3.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.js" type="text/javascript"></script>
        <script src="js/bootstrapvalidator.min.js" type="text/javascript"></script>
        <script src="js/index.js"></script>

        <!-- //sign up-page --> 
        <!-- footer-top -->
        <!-- footer -->
        <%@include file="includes/footer.jsp" %>
        <!-- cart-js -->

        <!-- //cart-js --> 	 
        <!-- menu js aim -->
        <script src="js/jquery.menu-aim.js"></script>
        <script src="js/main.js"></script> <!-- Resource jQuery -->
        <!-- //menu js aim --> 
        <!-- Bootstrap core JavaScript
    ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="js/bootstrap.js"></script>
    </body>
</html>

