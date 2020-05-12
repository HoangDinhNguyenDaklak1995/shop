<%--
    Document   : quanlyhoadon
    Created on : Dec 8, 2016, 2:43:30 PM
    Author     : TAO-PC
--%>

<%@page import="com.javaweb.model.Sanpham"%>
<%@page import="com.javaweb.model.Chitietdonhangla"%>
<%@page import="com.javaweb.service.ChiTietHoaDonLaService"%>
<%@page import="com.javaweb.service.SanphamService"%>
<%@page import="com.javaweb.model.Donhangla"%>
<%@page import="com.javaweb.model.Chitietdonhang"%>
<%@page import="com.javaweb.service.ChiTietHoaDonService"%>
<%@page import="com.javaweb.model.Users"%>
<%@page import="com.javaweb.service.UserService"%>
<%@page import="com.javaweb.service.HoaDonService"%>
<%@page import="com.javaweb.model.Donhang"%>
<%@page import="com.javaweb.service.HoaDonLaService"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Lumino - Charts</title>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/datepicker3.css" rel="stylesheet" type="text/css"/>  
        <link href="../css/styles.css" rel="stylesheet" type="text/css"/>

        <!--Icons-->
        <script src="js/lumino.glyphs.js"></script>

        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>
        <%
            HoaDonLaService HDL = new HoaDonLaService();
            ArrayList<Donhangla> listDHL = null;
            ArrayList<Chitietdonhangla> ListCTDHL = null;
            listDHL = HDL.GetAllDonHangLa();
            SanphamService SPService = new SanphamService();
            ChiTietHoaDonLaService CTHDLservice = new ChiTietHoaDonLaService();


        %>

        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="../index.jsp"><span>Lumino</span>Admin</a>
                    <ul class="user-menu">
                        <li class="dropdown pull-right">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> User <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Profile</a></li>
                                <li><a href="#"><svg class="glyph stroked gear"><use xlink:href="#stroked-gear"></use></svg> Settings</a></li>
                                <li><a href="#"><svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"></use></svg> Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

            </div><!-- /.container-fluid -->
        </nav>

        <div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
            <form role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
            </form>
            <ul class="nav menu">
                <li><a href="pageadmin.jsp"><svg class="glyph stroked dashboard-dial"><use xlink:href="#stroked-dashboard-dial"></use></svg> Dashboard</a></li>
                <li><a href="QuanLyUser.jsp"><svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"></use></svg> Quản Lý User</a></li>
                <li><a href="QuanLySP.jsp"><svg class="glyph stroked line-graph"><use xlink:href="#stroked-line-graph"></use></svg> Quản Lý Sản Phẩm</a></li>
                <li><a href="QuanLyTinTuc.jsp"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg> Quản Lý Tin Tức</a></li>
                <li><a href="QuanLyHoaDon.jsp"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg> Quản Lý Hóa Đơn</a></li>
                <li class="active"><a href="QuanLyHoaDonLa.jsp"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg> Quản Lý Hóa Đơn Lạ</a></li>


            </ul>

        </div><!--/.sidebar-->

        <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                    <li class="active">Icons</li>
                </ol>
            </div><!--/.row-->


            <table class="table">
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Tên Khách Hàng </th>  
                        <th>Email</th>                       
                        <th>Địa Chỉ</th> 
                        <th>Điện Thoại</th>
                        <th>Ngày Tạo</th>
                        <th>Tổng Tiền</th>
                        <th>Ghi Chú</th>
                    </tr>

                </thead>
                <%                    for (int i = 0; i < listDHL.size(); i++) {
                        Donhangla dhl = listDHL.get(i);

                        //bắt đầu vòng lặp
                %>  

                <tbody>
                    <tr>

                        <td><%=i + 1%> </td> 

                        <td>
                            <%= dhl.getHoTen()%>
                        </td>
                        <td><%= dhl.getEmail()%></td>  
                        <td><%= dhl.getDiaChi()%></td>    
                        <td><%=dhl.getDienThoai()%></td>  
                        <td><%=dhl.getNgayTao()%></td> 
                        <td><%=dhl.getTongTien()%></td> 
                        <td><%=dhl.getGhiChu()%></td> 
                        <td>
                            <!-- Trigger the modal with a button -->
                            <button type="button" class="btn btn-info" onclick="xemchitiet(<%=dhl.getIddonhangla()%>)" >Xem</button>
                            <!-- Modal -->

                        </td>
                        <td>
                        </td>
                    </tr>
                </tbody>
                <%                }                        //kết thúc vòng lặp
                %>
                </from>
            </table>




            <ul class="pagination pager">
                <li><a href="">Previous</a></li>
                <li><a href="">1</a><li>
                <li><a href="">2</a><li>	
                <li><a href="">3</a><li>	
                <li><a href="">Next</a></li>
            </ul>
            <%
                if (request.getParameter("idhoadonla") != null) {
                    ListCTDHL = CTHDLservice.GetAllCTDonHangLaByIDDonHangLa(Integer.parseInt(request.getParameter("idhoadonla")));
            %>
            <div class="modal fade" id="myModal" role="dialog">                             
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center">Chi Tiết Hóa Đơn Lạ</h4>
                            <div class="modal-body">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Số Thứ Tự</th>
                                            <th>Tên Sản Phẩm</th>
                                            <th>Số Lượng</th>
                                            <th>Thành Tiền</th>
                                            <th>Ghi Chú</th>
                                        </tr>
                                    </thead>
                                    <%
                                        for (int j = 0; j < ListCTDHL.size(); j++) {
                                            Chitietdonhangla CTDHL = ListCTDHL.get(j);
                                            Sanpham sp = SPService.GetSanPhamTheoId(CTDHL.getIdsanpham());
                                    %>
                                    <tbody>
                                        <tr>
                                            <td><%= j + 1%></td>
                                            <td><%= sp.getTenSanPham()%></td>
                                            <td><%= CTDHL.getSoluong()%></td>
                                            <td><%= CTDHL.getThanhtien()%></td>
                                            <td><%= CTDHL.getGhichu()%></td>
                                        </tr>                                           
                                    </tbody>
                                    <%
                                        }
                                    %>
                                </table>
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                            </div>
                        </div>

                    </div>
                </div>








                <%
                    }
                %>

            </div>	<!--/.main-->\



            <script>

                function xemchitiet(idhoadonla) {
                    $('#idhoadonla').val(idhoadonla);
                    window.location.href = "QuanLyHoaDonLa.jsp?idhoadonla=" + idhoadonla;

                }
                $("#myModal").modal('show');
            </script>
            <script src="js/jquery-1.11.1.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/chart.min.js"></script>
            <script src="js/chart-data.js"></script>
            <script src="js/easypiechart.js"></script>
            <script src="js/easypiechart-data.js"></script>
            <script src="js/bootstrap-datepicker.js"></script>
            <script>
                !function ($) {
                    $(document).on("click", "ul.nav li.parent > a > span.icon", function () {
                        $(this).find('em:first').toggleClass("glyphicon-minus");
                    });
                    $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
                }(window.jQuery);

                $(window).on('resize', function () {
                    if ($(window).width() > 768)
                        $('#sidebar-collapse').collapse('show')
                })
                $(window).on('resize', function () {
                    if ($(window).width() <= 767)
                        $('#sidebar-collapse').collapse('hide')
                })
            </script>	
    </body>

</html>

