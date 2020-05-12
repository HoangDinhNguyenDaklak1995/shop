<%-- 
    Document   : chitietsanpham
    Created on : Nov 26, 2016, 9:18:34 PM
    Author     : Administrator
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="com.javaweb.model.Sanpham"%>
<%@page import="com.javaweb.service.SanphamService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi Tiết Sản Phẩm</title>
        <%@include file="includes/headtag-chitietsanpham.jsp" %>
    </head>
    <body>
        <!-- header -->
        <%@include file="includes/header.jsp" %>
        
        <%            
            String folderupload7 =  getServletContext().getInitParameter("file-upload");
            int idsanpham = Integer.parseInt(request.getParameter("idsanpham"));
            SanphamService SPService = new SanphamService();
            Sanpham sp = SPService.GetSanPhamTheoId(idsanpham);
        %>
        <!-- //header --> 
        <!-- breadcrumbs --> 
        <div class="container-fluid"> 
            <ol class="breadcrumb breadcrumb1">
                <li><a href="index.jsp">Trang Chủ</a></li>
                <li class="active">Chi Tiết Sản Phẩm</li>
            </ol> 
            <div class="clearfix"> </div>
        </div>
        <!-- //breadcrumbs -->
        <!-- products -->
        <div class="products">	 
            <div class="container" style="background-color: #fff; border: 1px dashed tomato;">  
                <div class="single-page">
                    <div class="row" style="padding-top: 15px;">
                        <div class="col-md-6" style="max-width: 300px; max-height: 300px;">
                            <img src="${pageContext.request.contextPath}/<%=folderupload7%><%= sp.getImage()%>" data-imagezoom="true" class="img-responsive" alt=""> 
                        </div>

                        <div class="col-md-6 single-top-right">
                            <h3 class="item_name"><%= sp.getTenSanPham()%></h3>
                            <p>Thời gian xử lý: Hàng sẽ được vận chuyển trong vòng 2-3 ngày.</p>
                            <div class="single-rating">
                                <ul>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                    <li class="rating">20 lượt xem</li>
                                    <li><a href="#">Đánh giá sản phẩm này</a></li>
                                </ul>                        
                            </div>
                            <div class="single-rating2">
                                <ul class="form-inline li-ten">
                                    <li><span class="glyphicon glyphicon-info-sign"></span> Nhà Sản Xuất:</li>
                                    <li><a href="#">DELL</a></li>
                                </ul>
                                <ul class="form-inline li-ten">
                                    <li><span class="glyphicon glyphicon-info-sign"></span> Mã Sản Phẩm:</li>
                                    <li style="color: #999">LTHP-R137WM</li>
                                </ul>
                                <ul class="form-inline li-ten">
                                    <li><span class="glyphicon glyphicon-info-sign"></span> Số Lượng:</li>
                                    <li style="color: #999"><%=sp.getSoLuong()%></li>
                                </ul>
                            </div>
                            <div class="single-price">

                                <%
                                    if (sp.getGiaKm() == null) {
                                %>
                                <ul>
                                    <li style="color:#0280e1">
                                        <%DecimalFormat formatter = new DecimalFormat("###,###,###");%>
                                        <%= formatter.format(sp.getGia()) + " đ" %>
                                    </li>
                                </ul>
                                <%
                                } else {
                                %>
                                <ul>
                                    <li style="color:#0280e1">
                                        <%DecimalFormat formatter = new DecimalFormat("###,###,###");%>
                                        <%= formatter.format(sp.getGiaKm()) + " đ" %>
                                    </li>
                                    <li style="font-size: 25px"><del>Giá cũ: <%= formatter.format(sp.getGia()) + " đ" %></del></li>
                                </ul>
                                <%
                                    }
                                %>
                            </div>

                            <p class="single-price-text">

                            </p>
                            <form action="addtocart.jsp?idsanpham=<%= sp.getIdSanPham()%>" method="post">
                                <input type="hidden" name="cmd" value="_cart" />
                                <input type="hidden" name="add" value="1" /> 
                                <input type="hidden" name="w3ls_item" value="<%= sp.getTenSanPham()%>"/> 
                                <input type="hidden" name="amount" value="<%= sp.getGia()%>"/> 
                                <a class="w3ls-cart" href="addtocart.jsp?idsanpham=<%= sp.getIdSanPham()%>"
                                   <i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
                                </a>
                            </form>
                        </div>
                        <div class="single-page-icons social-icons"> 
                            <ul>
                                <li><h4>Chia sẻ</h4></li>
                                <li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
                                <li><a href="#" class="fa fa-google-plus icon googleplus"> </a></li>
                            </ul>
                        </div>
                        <div class="clearfix"></div>  
                    </div>

                </div>
                <!--//Kết thúc xem chi tiết sản phẩm-->

                <!-- collapse-tabs -->
                <div class="collpse tabs">
                    <h3 class="w3ls-title">Thông tin sản phẩm</h3> 
                    <div class="panel-group collpse" id="accordion" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        <i class="fa fa-file-text-o fa-icon" aria-hidden="true"></i> Mô Tả <span class="fa fa-angle-down fa-arrow" aria-hidden="true"></span> <i class="fa fa-angle-up fa-arrow" aria-hidden="true"></i>
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body"><%= sp.getMoTa()%></div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingTwo">
                                <h4 class="panel-title">
                                    <a class="collapsed pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="fa fa-info-circle fa-icon" aria-hidden="true"></i> Thông tin thêm <span class="fa fa-angle-down fa-arrow" aria-hidden="true"></span> <i class="fa fa-angle-up fa-arrow" aria-hidden="true"></i>
                                    </a> 
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    Mô tả thêm về sản phẩm này...
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingThree">
                                <h4 class="panel-title">
                                    <a class="collapsed pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        <i class="fa fa-check-square-o fa-icon" aria-hidden="true"></i> Đánh giá (5) <span class="fa fa-angle-down fa-arrow" aria-hidden="true"></span> <i class="fa fa-angle-up fa-arrow" aria-hidden="true"></i>
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                <div class="panel-body">
                                    Đánh giá sản phẩm này của khách hàng...
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingFour">
                                <h4 class="panel-title">
                                    <a class="collapsed pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                        <i class="fa fa-question-circle fa-icon" aria-hidden="true"></i> Trợ giúp <span class="fa fa-angle-down fa-arrow" aria-hidden="true"></span> <i class="fa fa-angle-up fa-arrow" aria-hidden="true"></i>
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                                <div class="panel-body">
                                    Hỏi đáp
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //collapse -->


                <!--Bắt đầu ô show bình luận-->
                <%@include file="includes/binhluansanpham.jsp" %>
                <!--Kết thúc ô show bình luận-->

                <!-- recommendations -->

                <!-- //recommendations --> 

            </div>
        </div>
        <!--//products-->  
        <!-- footer-top -->
        <%@include file="includes/footer-top.jsp" %>
        <!-- //footer-top -->  
        <!-- subscribe -->
        <%@include file="includes/subscribe.jsp" %>
        <!-- //subscribe --> 
        <!-- footer -->
        <%@include file="includes/footer.jsp" %>
        <!-- cart-js -->
        <script src="js/minicart.js"></script>
        <script>
            w3ls.render();

            w3ls.cart.on('w3sb_checkout', function (evt) {
                var items, len, i;

                if (this.subtotal() > 0) {
                    items = this.items();

                    for (i = 0, len = items.length; i < len; i++) {
                        items[i].set('shipping', 0);
                        items[i].set('shipping2', 0);
                    }
                }
            });
        </script>  
        <!-- //cart-js --> 	 
        <!-- menu js aim -->
        <script src="js/jquery.menu-aim.js"></script>
        <script src="js/main.js"></script> <!-- Resource jQuery -->
        <!-- //menu js aim --> 
        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster --> 
    </body>
</html>
