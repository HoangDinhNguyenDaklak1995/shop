<%-- 
    Document   : dangky
    Created on : Nov 23, 2016, 4:10:40 PM
    Author     : Nguyễn Chí Tuấn
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="com.javaweb.model.Sanpham"%>
<%@page import="com.javaweb.service.SanphamService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giỏ Hàng</title>
        <%@include file="includes/headtag-chitietsanpham.jsp" %>
        <%@include file="includes/headtag-dangkydangnhap.jsp" %>
    </head>
    <body>
        <!-- header -->
        <%@include file="includes/header.jsp" %>
        <section class="container" style="margin-top: 70px"> 

            <div class="row ">
                <div class="col-md-6" >
                    <%                 
                        String folderupload8 =  getServletContext().getInitParameter("file-upload");
                        if (session.getAttribute("IdUser") != null) {
                            UserService us = new UserService();
                            Users user = us.GetUsersByID(session.getAttribute("IdUser").toString());

                    %>
                    <div class="panel panel-default">
                        <div class="panel-heading">Thông Tin Tài Khoản Khách Hàng</div>
                        <div class="panel-body text-center">
                            <span>Tên Khách Hàng : <%= user.getFullName()%></span></br>
                            <span>Email : <%= user.getEmail()%></span></br>
                            <span>Địa Chỉ : <%= user.getDiaChi()%></span></br>
                            <span>Số Điện Thoại : <%= user.getSdt()%></span></br>

                        </div>
                    </div>
                    <%
                    } else {
                    %>
                    <div class="panel panel-default">
                        <div class="panel-heading text-center" style="font-weight: bold">
                            Đăng nhập hoặc Đặt hàng không cần đăng ký</div>
                        <div class="panel-body">                           
                            <div class="collpse tabs">                  
                                <div class="panel-group collpse" id="accordion" role="tablist" aria-multiselectable="true">                                                
                                    <div class="panel panel-default" style="width: 80%;margin: 0 auto">
                                        <div class="panel-heading" role="tab" id="headingThree">
                                            <h4 class="panel-title">
                                                <a class="collapsed pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                    <i class="fa fa-check-square-o fa-icon" aria-hidden="true"></i> Đăng Nhập <span class="fa fa-angle-down fa-arrow" aria-hidden="true"></span> <i class="fa fa-angle-up fa-arrow" aria-hidden="true"></i>
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                            <div class="panel-body">
                                                <form action="LoginServlet" method="post">
                                                    <div class="input-group" style="padding-bottom: 5px;">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                        <input id="email" type="text" class="form-control" name="Email" placeholder="Username or Email">
                                                    </div>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                                        <input id="password" type="password" class="form-control" name="Password" placeholder="Password">
                                                        <input type="hidden" class="form-control" name="dangnhapmuahang" value="1" >
                                                    </div>
                                                    <br>
                                                    <div class="text-center">
                                                        <button style="padding: 7px 30px"type="submit" class="btn btn-danger">Đăng nhập</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default" style="width: 80%;margin: 0 auto;margin-top: 20px">
                                        <div class="panel-heading" role="tab" id="headingTwo">
                                            <h4 class="panel-title">
                                                <a class="collapsed pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                    <i class="fa fa-info-circle fa-icon" aria-hidden="true"></i> Mua Hàng Không Cần Đăng Nhập <span class="fa fa-angle-down fa-arrow" aria-hidden="true"></span> <i class="fa fa-angle-up fa-arrow" aria-hidden="true"></i>
                                                </a> 
                                            </h4>
                                        </div>
                                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                            <div class="panel-body">
                                                <form class="well form-horizontal" action="cardkhachla.jsp" method="get"  id="contact_form"  >                                 
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">FullName</label>  
                                                        <div class="col-md-8 inputGroupContainer">
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                                <input  name="FullName" placeholder="Nhập đầy đủ họ và tên" class="form-control"  type="text">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Text input-->
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">E-Mail</label>  
                                                        <div class="col-md-8 inputGroupContainer">
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                                                <input name="Email" placeholder="examp@examp.com" class="form-control"  type="text">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Địa Chỉ</label>  
                                                        <div class="col-md-8 inputGroupContainer">
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                                                <input name="DiaChi" placeholder="Nhập địa chỉ" class="form-control" type="text">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Text input-->
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">SĐT</label>  
                                                        <div class="col-md-8 inputGroupContainer">
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                                                <input name="phone" class="form-control" type="text">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Select Basic -->
                                                    
                                                    <!-- Button -->
                                                    <label style="min-height: 0px;" class="checkbox"><input type="checkbox" name="checkbox"><i></i>
                                                        Tôi đã đọc và đồng ý theo <a href="#">điều khoản sử dụng.</a>
                                                    </label>
                                                    <br>
                                       
                                                    <div class="form-group text-center">
                                                        <div>
                                                            <button type="submit" class="btn btn-danger" >Tiếp Tục Mua Hàng <span class="glyphicon glyphicon-send"></span></button>
                                                        </div>
                                                    </div>
                                                    <!-- End -->
                                                    
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
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
                            <div class="panel-heading" style="font-weight: bold">
                                Thông Tin Đơn Hàng : (<%=listGioHang.size()%>) Sản Phẩm </div>
                            <div class="panel-body">
                                <table class="table">
                                    <thead style="background-color: #F8FCEB">
                                        <tr style="text-align: center">
                                            <th>Sản Phẩm</th>                 
                                            <th style="text-align: center">Số Lượng</th>                       
                                            <th style="text-align: center">Giá</th>                       
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            for (int i = 0; i < listGioHang.size(); i++) {
                                                GioHang item = listGioHang.get(i);
                                                Sanpham sp = Spserviec.GetSanPhamTheoId(Integer.parseInt(item.getMaSP()));

                                                if (sp.getGiaKm() == null) {
                                                    tongtien += sp.getGia() * Double.parseDouble(item.getSoLuong());
                                        %>
                                        <tr>
                                            <td style="padding:10px;" >
                                                <img class="img-thumbnail"
                                                     src="${pageContext.request.contextPath}/<%=folderupload8%><%= sp.getImage()%>"
                                                     width="60px" height="60px"/>
                                                <span style="font-weight: bold" name="idsp<%=item.getMaSP()%>"><%= sp.getTenSanPham()%></span>
                                            </td>
                                                                   
                                            <td  style="text-align: center">
                                                <input style="width: 40px; margin-top: 25px " name="sl<%=item.getMaSP()%>" type="number" value="<%=item.getSoLuong()%>"/>
                                                <a href="showcart.jsp?removeidsp=<%=item.getMaSP()%>">
                                                    <span class="glyphicon glyphicon-remove" style="color: red;"></span>
                                                </a>
                                            </td>                                              
                                            <td  style="text-align: center; line-height: 75px">
                                                <%DecimalFormat formatter = new DecimalFormat("###,###,###");%>
                                                <%= formatter.format(sp.getGia() * Double.parseDouble(item.getSoLuong())) + " đ" %>
                                            </td>
                                        </tr>
                                        <%
                                        } else {
                                            tongtien += sp.getGiaKm() * Double.parseDouble(item.getSoLuong());
                                        %>
                                        <tr>
                                            <td style="padding:10px;">
                                                <img class="img-thumbnail" src="${pageContext.request.contextPath}/<%=folderupload8%><%= sp.getImage()%>"
                                                     width="60px" height="60px"/>
                                                <span style="font-weight: bold" name="idsp<%=item.getMaSP()%>"><%= sp.getTenSanPham()%></span>
                                            </td>                      
                                            <td  style="text-align: center;">
                                                <input style="width: 40px; margin-top: 25px;" name="sl<%=item.getMaSP()%>" type="number" value="<%=item.getSoLuong()%>"/>
                                                <a href="showcart.jsp?removeidsp=<%=item.getMaSP()%>">
                                                    <span class="glyphicon glyphicon-remove" style="color: red;"></span>
                                                </a>
                                            </td>                                              
                                            <td  style="text-align: center; line-height: 75px">
                                                <%DecimalFormat formatter = new DecimalFormat("###,###,###");%>
                                                <%= formatter.format(sp.getGiaKm() * Double.parseDouble(item.getSoLuong())) + " đ" %>
                                            </td>
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
                                    <span style="color: red;font-size: 20px;font-weight: bold"class="pull-right"  >
                                        <%DecimalFormat formatter = new DecimalFormat("###,###,###");%>
                                        Tổng Tiền  :  <%=formatter.format(tongtien) + " đ"%> 
                                    </span>
                                    <input type="hidden" value=" <%= tongtien%>" name="tongtien"/>
                                </div>
                                <%
                                    if (session.getAttribute("IdUser") != null) {
                                %>
                                <input type="hidden" name="iduser" value="<%= session.getAttribute("IdUser")%>"/>
                                <%
                                    }

                                %>

                                <button style="padding: 10px 20px" type="submit" class="btn btn-primary thanhtoan text-center">THANH TOÁN</button>
                            </div>
                        </div>

                        <%} else {
                        %>
                        <div class="panel panel-default">
                            <div class="panel-heading" style="font-weight: bold">Thông Tin Đơn Hàng : 0 Sản Phẩm </div>
                            <div class="panel-body">
                                <span>Chưa có sản phẩm nào được chọn....</span>
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

