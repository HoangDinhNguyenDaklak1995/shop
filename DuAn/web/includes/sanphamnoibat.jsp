<%-- 
    Document   : sanphamnoibat
    Created on : Nov 23, 2016, 5:16:44 PM
    Author     : Nguyễn Chí Tuấn
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="com.javaweb.model.Sanpham"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.javaweb.service.SanphamService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    SanphamService sanphamService = new SanphamService();
    ArrayList<Sanpham> ListSanphamLapTop = null;
    ArrayList<Sanpham> ListSanphamDienThoai = null;
    ArrayList<Sanpham> ListSanphamLuuNiem = null;
    ArrayList<Sanpham> ListSanphamNhaCua = null;
    ArrayList<Sanpham> ListSanphamTheThao = null;
    ListSanphamLapTop = sanphamService.GetAllSanpham(1, 5);
    ListSanphamDienThoai = sanphamService.GetAllSanpham(2, 4);
    ListSanphamLuuNiem = sanphamService.GetAllSanpham(3, 4);
    ListSanphamNhaCua = sanphamService.GetAllSanpham(4, 4);
    ListSanphamTheThao = sanphamService.GetAllSanpham(5, 4);
%>
<div class="welcome"> 
    <div class="container"> 
        <div class="welcome-info">
            <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                <ul id="myTab" class=" nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" >
                            <i class="fa fa-laptop" aria-hidden="true"></i> 
                            <h5>Laptop</h5>
                        </a></li>
                    <li role="presentation"><a href="#carl" role="tab" id="carl-tab" data-toggle="tab"> 
                            <i class="fa fa-mobile-phone" aria-hidden="true"></i>
                            <h5>Điện Thoại</h5>
                        </a></li>
                    <li role="presentation"><a href="#james" role="tab" id="james-tab" data-toggle="tab"> 
                            <i class="fa fa-gift" aria-hidden="true"></i>
                            <h5>Quà Lưu Niệm</h5>
                        </a></li>
                    <li role="presentation"><a href="#decor" role="tab" id="decor-tab" data-toggle="tab"> 
                            <i class="fa fa-home" aria-hidden="true"></i>
                            <h5>Nhà Cửa & Đồ Gia Dụng</h5>
                        </a></li>
                    <li role="presentation"><a href="#sports" role="tab" id="sports-tab" data-toggle="tab"> 
                            <i class="fa fa-futbol-o" aria-hidden="true"></i>
                            <h5>Dụng Cụ Thể Thao</h5>
                        </a></li> 
                </ul>
                <div class="clearfix"> </div>
                <h3 class="w3ls-title">Sản Phẩm Nổi Bật</h3>
                <div id="myTabContent" class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
                        <div class="tabcontent-grids">  
                            <div id="owl-demo" class="owl-carousel">
                                <%
                                    String folderupload =  getServletContext().getInitParameter("file-upload");
                                    for (int i = 0; i < ListSanphamLapTop.size(); i++) {
                                        Sanpham laptop = ListSanphamLapTop.get(i);

                                %>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits"> 
                                        <a href="chitietsanpham.jsp?idsanpham=<%= laptop.getIdSanPham()%>"><img src="${pageContext.request.contextPath}/<%=folderupload%><%= laptop.getImage()%>" height="215px" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">           
                                            <h4><a href="sanpham.jsp"><%= laptop.getTenSanPham()%></a></h4>
                                            <p><%= laptop.getMoTa() %>
                                            <h3 class="text-center" style="color: #F44336; font-weight: bold">
                                                <%DecimalFormat formatter = new DecimalFormat("###,###,###");%>
                                                <%= formatter.format(laptop.getGia()) + " đ"%><br>
                                            </h3>
                                            <br>
                                            <a class="w3ls-cart" href="addtocart.jsp?idsanpham=<%= laptop.getIdSanPham()%>"
                                               <i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
                                            </a>

                                        </div>         
                                    </div>  
                                </div>
                                <%
                                    }
                                %>
                            </div> 
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="carl" aria-labelledby="carl-tab">
                        <div class="tabcontent-grids">
                            <script>
                                $(document).ready(function () {
                                    $("#owl-demo1").owlCarousel({
                                        autoPlay: 3000, //Set AutoPlay to 3 seconds

                                        items: 4,
                                        itemsDesktop: [640, 5],
                                        itemsDesktopSmall: [414, 4],
                                        navigation: true

                                    });

                                });
                            </script>
                            <div id="owl-demo1" class="owl-carousel">
                                <%
                                    String folderupload2 =  getServletContext().getInitParameter("file-upload");
                                    for (int i = 0; i < ListSanphamDienThoai.size(); i++) {
                                        Sanpham dienthoai = ListSanphamDienThoai.get(i);

                                %>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits"> 
                                        <<a href="chitietsanpham.jsp?idsanpham=<%= dienthoai.getIdSanPham()%>"><img src="${pageContext.request.contextPath}/<%=folderupload2%><%=dienthoai.getImage()%>" height="215px" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">           
                                            <h4><a href="sanpham.jsp"><%= dienthoai.getTenSanPham()%></a></h4>
                                            <p><%= dienthoai.getMoTa()%>
                                            <h3 class="text-center" style="color: #F44336; font-weight: bold">
                                                <%DecimalFormat formatter = new DecimalFormat("###,###,###");%>
                                                <%= formatter.format(dienthoai.getGia()) + " đ"%><br>
                                            </h3>
                                            <br>

                                            <a class="w3ls-cart" href="addtocart.jsp?idsanpham=<%= dienthoai.getIdSanPham()%>"
                                               <i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
                                            </a>

                                        </div>         
                                    </div>  
                                </div>
                                <%
                                    }
                                %>
                            </div>   
                        </div>
                    </div> 
                    <div role="tabpanel" class="tab-pane fade" id="james" aria-labelledby="james-tab">
                        <div class="tabcontent-grids">
                            <script>
                                $(document).ready(function () {
                                    $("#owl-demo2").owlCarousel({
                                        autoPlay: 3000, //Set AutoPlay to 3 seconds

                                        items: 4,
                                        itemsDesktop: [640, 5],
                                        itemsDesktopSmall: [414, 4],
                                        navigation: true

                                    });

                                });
                            </script>
                            <div id="owl-demo2" class="owl-carousel"> 
                                <%
                                    String folderupload3 =  getServletContext().getInitParameter("file-upload");
                                    for (int i = 0; i < ListSanphamLuuNiem.size(); i++) {
                                        Sanpham LuuNiem = ListSanphamLuuNiem.get(i);

                                %>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits"> 
                                        <a href="chitietsanpham.jsp?idsanpham=<%= LuuNiem.getIdSanPham()%>"><img src="${pageContext.request.contextPath}/<%=folderupload3%><%= LuuNiem.getImage()%>" height="215px" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">           
                                            <h4><a href="sanpham.jsp"><%= LuuNiem.getTenSanPham()%></a></h4>
                                            <p><%= LuuNiem.getMoTa()%></p>
                                            <h3 class="text-center" style="color: #F44336; font-weight: bold">
                                                <%DecimalFormat formatter = new DecimalFormat("###,###,###");%>
                                                <%= formatter.format(LuuNiem.getGia()) + " đ"%><br>
                                            </h3>
                                            <br>


                                            <a class="w3ls-cart" href="addtocart.jsp?idsanpham=<%= LuuNiem.getIdSanPham()%>"
                                               <i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
                                            </a>

                                        </div>         
                                    </div>  
                                </div>
                                <%
                                    }
                                %>
                            </div>    
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="decor" aria-labelledby="decor-tab">
                        <div class="tabcontent-grids">
                            <script>
                                $(document).ready(function () {
                                    $("#owl-demo3").owlCarousel({
                                        autoPlay: 3000, //Set AutoPlay to 3 seconds

                                        items: 4,
                                        itemsDesktop: [640, 5],
                                        itemsDesktopSmall: [414, 4],
                                        navigation: true

                                    });

                                });
                            </script>
                            <div id="owl-demo3" class="owl-carousel"> 
                                <%
                                    String folderupload4 =  getServletContext().getInitParameter("file-upload");
                                    for (int i = 0; i < ListSanphamNhaCua.size(); i++) {
                                        Sanpham NhaCua = ListSanphamNhaCua.get(i);

                                %>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits"> 
                                        <a href="chitietsanpham.jsp?idsanpham=<%= NhaCua.getIdSanPham()%>"><img src="${pageContext.request.contextPath}/<%=folderupload4%><%=NhaCua.getImage()%>" height="215px" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">           
                                            <h4><a href="sanpham.jsp"><%= NhaCua.getTenSanPham()%></a></h4>
                                            <p><%= NhaCua.getMoTa()%></p>
                                            <h3 class="text-center" style="color: #F44336; font-weight: bold">
                                                <%DecimalFormat formatter = new DecimalFormat("###,###,###");%>
                                                <%= formatter.format(NhaCua.getGia()) + " đ"%><br>
                                            </h3>
                                            <br>

                                            <a class="w3ls-cart" href="addtocart.jsp?idsanpham=<%= NhaCua.getIdSanPham()%>"
                                               <i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
                                            </a>

                                        </div>         
                                    </div>  
                                </div>
                                <%
                                    }
                                %>
                            </div>   
                        </div>    
                    </div>

                    <div role="tabpanel" class="tab-pane fade" id="sports" aria-labelledby="sports-tab">
                        <div class="tabcontent-grids">
                            <script>
                                $(document).ready(function () {
                                    $("#owl-demo4").owlCarousel({
                                        autoPlay: 3000, //Set AutoPlay to 3 seconds

                                        items: 4,
                                        itemsDesktop: [640, 5],
                                        itemsDesktopSmall: [414, 4],
                                        navigation: true

                                    });
                                });
                            </script>
                            <div id="owl-demo4" class="owl-carousel"> 
                                <%
                                    String folderupload5 =  getServletContext().getInitParameter("file-upload");
                                    for (int i = 0; i < ListSanphamTheThao.size(); i++) {
                                        Sanpham TheThao = ListSanphamTheThao.get(i);
                                %>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits"> 
                                        <a href="chitietsanpham.jsp?idsanpham=<%= TheThao.getIdSanPham()%>"><img src="${pageContext.request.contextPath}/<%=folderupload5%><%= TheThao.getImage()%>" height="215px" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">           
                                            <h4><a href="sanpham.jsp"><%= TheThao.getTenSanPham()%></a></h4>
                                            <p><%= TheThao.getMoTa()%></p>
                                            <h3 class="text-center" style="color: #F44336; font-weight: bold">
                                                <%DecimalFormat formatter = new DecimalFormat("###,###,###");%>
                                                <%= formatter.format(TheThao.getGia()) + " đ"%><br>
                                            </h3>
                                            <br>

                                            <a class="w3ls-cart" href="addtocart.jsp?idsanpham=<%= TheThao.getIdSanPham()%>"
                                               <i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
                                            </a>

                                        </div>         
                                    </div>  
                                </div>
                                <%
                                    }
                                %>
                            </div>    
                        </div>
                    </div> 
                </div>   
            </div>  
        </div>  	
    </div>  	
</div>
