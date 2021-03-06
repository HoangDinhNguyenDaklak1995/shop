<%-- 
    Document   : timkiemsanpham
    Created on : Dec 8, 2016, 9:50:46 AM
    Author     : PhuocDanh
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="com.javaweb.model.Sanpham"%>
<%@page import="com.javaweb.service.SanphamService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sản Phẩm Máy Tính</title>
        <%@include file="includes/headtag-sanpham.jsp" %>
    </head>
    <body>
        <!-- header -->
        <%@include file="includes/header.jsp" %>
        <%            String timkiem = request.getParameter("timkiemsp");
            SanphamService SPService = new SanphamService();
            ArrayList<Sanpham> ListSanPham = null;
            ListSanPham = SPService.TimKiemSanPham(timkiem);

        %>
        <!-- //header --> 	
        <!-- products -->
        <div class="products">	 
            <div class="container">
                <div class="col-md-9 product-w3ls-right">
                    <!-- breadcrumbs --> 
                    <ol class="breadcrumb breadcrumb1">
                        <li><a href="index.jsp">Trang chủ</a></li>
                        <li class="active">Sản Phẩm</li>
                    </ol> 
                    <div class="clearfix"> </div>
                    <!-- //breadcrumbs -->
                    <div class="product-top">
                        <h4></h4>
                        <div class="clearfix"> </div>
                    </div>
                    <!--ô load sản phẩm-->
                    <div class="products-row">
                        <%                           
                            String folderupload8 =  getServletContext().getInitParameter("file-upload");
                            for (int i = 0; i < ListSanPham.size(); i++) {
                                Sanpham sp = ListSanPham.get(i);
                                if (sp.getGiaKm() != null) {
                        %>
                        <div class="col-md-3 product-grids">
                            <div class="agile-products"style="height: 260px">
                                <div class="new-tag"><h6>Sale</h6></div>
                                <a href="chitietsanpham.jsp?idsanpham=<%= sp.getIdSanPham()%>">
                                    <img src="${pageContext.request.contextPath}/<%=folderupload8%><%= sp.getImage()%>" class="img-thumbnail" alt="img" style="height: 138px">
                                </a>
                                <div class="agile-product-text">              
                                    <h5 class="text-center" style="font-weight: bold; font-size: 16px">
                                        <a href="chitietsanpham.jsp?idsanpham=<%= sp.getIdSanPham()%>"><%= sp.getTenSanPham()%></a>
                                    </h5>  
                                        <h6 style="font-weight: bold">
                                            <del>
                                                <%DecimalFormat formatter = new DecimalFormat("###,###,###");%>
                                                <%= formatter.format(sp.getGia()) + " đ"%><br>
                                            </del> <%= formatter.format(sp.getGiaKm()) + " đ"%> </h6>


                                    <a class="w3ls-cart pw3ls-cart" href="addtocart.jsp?idsanpham=<%= sp.getIdSanPham()%>"
                                       <i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
                                    </a>

                                </div>
                            </div>
                        </div>
                        <%
                        } else {
                        %>
                        <div class="col-md-3 product-grids">
                            <div class="agile-products" style="height: 260px">
                                <a href="chitietsanpham.jsp?idsanpham=<%= sp.getIdSanPham()%>"><img src="${pageContext.request.contextPath}/<%=folderupload8%><%= sp.getImage()%>" class="img-thumbnail" style="height: 138px"alt="img"></a>
                                <div class="agile-product-text">              
                                    <h5 class="text-center" style="font-weight: bold; font-size: 16px">
                                        <a href="chitietsanpham.jsp?idsanpham=<%= sp.getIdSanPham()%>"><%= sp.getTenSanPham()%></a>
                                    </h5> 
                                    <h6 style="font-weight: bold"><del></del>
                                        <%DecimalFormat formatter = new DecimalFormat("###,###,###");%>
                                        <%= formatter.format(sp.getGia()) + " đ"%><br>
                                    </h6> 
                                    <a class="w3ls-cart pw3ls-cart" href="addtocart.jsp?idsanpham=<%= sp.getIdSanPham()%>"
                                       <i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
                                    </a>
                                </div>
                            </div>
                        </div>
                        <%
                            }
                        %>


                        <%
                            }
                        %>
                        <div class="clearfix"> </div>
                    </div>
                    <!--                     add-products  
                                        <div class="w3ls-add-grids w3agile-add-products">
                                            <a href="#"> 
                                                <h4>Top 10 sản phẩm xu hướng dành cho bạn. Giảm giá <span>20%</span></h4>
                                                <h6>Mua ngay <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></h6>
                                            </a>
                                        </div> 
                                         //add-products -->
                </div>
                <div class="col-md-3 rsidebar">
                    <div class="rsidebar-top">
                        <div class="slider-left">
                            <h4>Lọc theo giá</h4>            
                            <div class="row row1 scroll-pane">
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>0 - $100 </label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$100 - $200 </label> 
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$200 - $250  </label> 
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$250 - $300 </label> 
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$350 - $400 </label> 
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$450 - $500  </label> 
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>More</label> 
                            </div> 
                        </div>
                        <div class="sidebar-row">
                            <h4> Electronics</h4>
                            <ul class="faq">
                                <li class="item1"><a href="#">Mobile phones<span class="glyphicon glyphicon-menu-down"></span></a>
                                    <ul>
                                        <li class="subitem1"><a href="#">Smart phones</a></li>										
                                        <li class="subitem1"><a href="#">Accessories</a></li>										
                                        <li class="subitem1"><a href="#">Tabs</a></li>										
                                    </ul>
                                </li>
                                <li class="item2"><a href="#">Large appliances<span class="glyphicon glyphicon-menu-down"></span></a>
                                    <ul>
                                        <li class="subitem1"><a href="#">Refrigerators </a></li>										
                                        <li class="subitem1"><a href="#">Washing Machine </a></li>										
                                        <li class="subitem1"><a href="#">Kitchen Appliances </a></li>										
                                        <li class="subitem1"><a href="#">Air Conditioner</a></li>										
                                    </ul>
                                </li>
                                <li class="item3"><a href="#">Entertainment<span class="glyphicon glyphicon-menu-down"></span></a>
                                    <ul>
                                        <li class="subitem1"><a href="#"> Tv & Accessories</a></li>										
                                        <li class="subitem1"><a href="#">Digital Camera </a></li>										
                                        <li class="subitem1"><a href="#">Computer</a></li>										
                                    </ul>
                                </li>
                            </ul>
                            <!-- script for tabs -->
                            <script type="text/javascript">
                                $(function () {

                                    var menu_ul = $('.faq > li > ul'),
                                            menu_a = $('.faq > li > a');

                                    menu_ul.hide();

                                    menu_a.click(function (e) {
                                        e.preventDefault();
                                        if (!$(this).hasClass('active')) {
                                            menu_a.removeClass('active');
                                            menu_ul.filter(':visible').slideUp('normal');
                                            $(this).addClass('active').next().stop(true, true).slideDown('normal');
                                        } else {
                                            $(this).removeClass('active');
                                            $(this).next().stop(true, true).slideUp('normal');
                                        }
                                    });

                                });
                            </script>
                            <!-- script for tabs -->
                        </div>
                        <div class="sidebar-row">
                            <h4>Giảm giá</h4>
                            <div class="row row1 scroll-pane">
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>70% - 60% (5)</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>50% - 40% (7)</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (2)</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (5)</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (7)</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (2)</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Khác(50)</label>
                            </div>
                        </div>
                        <div class="sidebar-row">
                            <h4>Màu</h4>
                            <div class="row row1 scroll-pane">
                                <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Trắng</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Hồng</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Vàng</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Xanh Da Trời</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Cam</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Nâu</label> 
                            </div>
                        </div>			 
                    </div>
                    <div class="related-row">
                        <h4>Tìm kiếm liên quan</h4>
                        <ul>
                            <li><a href="products.html">Dell </a></li>
                            <li><a href="products.html">Apple</a></li>
                            <li><a href="products.html">Asus</a></li>
                            <li><a href="products.html">Samsung</a></li>
                            <li><a href="products.html">Lenovo</a></li>
                            <li><a href="products.html">Toshiba</a></li>
                            <li><a href="products.html">Purifiers</a></li>
                            <li><a href="products.html">Oven</a></li>
                            <li><a href="products.html">Cleaners</a></li>
                            <li><a href="products.html">Small devices</a></li>
                        </ul>
                    </div>
                    <div class="related-row">
                        <h4>Có thể bạn thích?</h4>
                        <div class="galry-like">  
                            <a href="#"><img src="images/e1.png" class="img-responsive" alt="img"></a>             
                            <h4><a href="#">Audio speaker</a></h4> 
                            <h5>$100</h5>       
                        </div>
                    </div>
                </div>
                <div class="clearfix"> </div>
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
        <script src="js/bootstrap.js"></script>
    </body>
</html>
