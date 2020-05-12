<%-- 
    Document   : QuanLyTinTuc
    Created on : Dec 8, 2016, 2:44:47 PM
    Author     : TAO-PC
--%>

<%@page import="com.javaweb.service.LoaiTinTucService"%>
<%@page import="com.javaweb.model.Tintuc"%>
<%@page import="com.javaweb.model.Loaitintuc"%>
<%@page import="com.javaweb.service.TinTucService"%>
<%@page import="com.javaweb.service.LoaisanphamService"%>
<%@page import="com.javaweb.model.Loaisanpham"%>
<%@page import="com.javaweb.service.SanphamService"%>
<%@page import="com.javaweb.model.Sanpham"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.javaweb.model.Sanpham"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản Lý Các Trang Tin Tức</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery-2.2.3.min.js" type="text/javascript"></script>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <link href="../css/datepicker3.css" rel="stylesheet" type="text/css"/>  
        <link href="../css/styles.css" rel="stylesheet" type="text/css"/>
        <!--Icons-->
        <script src="js/lumino.glyphs.js"></script>
        <script>
            var loadFile = function (event) {
                var reader = new FileReader();
                reader.onload = function () {
                    var output = document.getElementById('output');
                    output.src = reader.result;
                };
                reader.readAsDataURL(event.target.files[0]);
            };// code display image upload
        </script>
        <script>
            var loadFile2 = function (event) {
                var reader = new FileReader();
                reader.onload = function () {
                    var output = document.getElementById('output2');
                    output.src = reader.result;
                };
                reader.readAsDataURL(event.target.files[0]);
            };// code display image upload
        </script>
        <style>
            #output{
                width: 220px;
                height: 160px;
            }
            #output2{
                width: 200px;
                height: 120px;
            }
        </style>
    </head>
    <body>
        <%
            TinTucService TTService = new TinTucService();
            LoaiTinTucService LTTService = new LoaiTinTucService();
            ArrayList<Loaitintuc> ListLoaiTin = null;
            ListLoaiTin = LTTService.GetAllLoaiTinTuc();
            ArrayList<Tintuc> Listtintuc = null;
            String idparent = "1";
            if (request.getParameter("iddanhmuc") != null) {
                idparent = request.getParameter("iddanhmuc");
            }
            Listtintuc = TTService.GetAllTinTucTheoIdLoaiTin(Integer.parseInt(idparent));
            String folderupload = getServletContext().getInitParameter("file-upload");
        %>
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
                    <a class="navbar-brand" href="../index.jsp"><span>Dx2T</span>Admin</a>
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
                    <input type="text" class="form-control" placeholder="Tìm kiếm...">
                </div>
            </form>
            <ul class="nav menu">
                <li><a href="pageadmin.jsp"><svg class="glyph stroked dashboard-dial"><use xlink:href="#stroked-dashboard-dial"></use></svg> Dashboard</a></li>
                <li><a href="QuanLyUser.jsp"><svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"></use></svg> Quản Lý User</a></li>
                <li><a href="QuanLySP.jsp"><svg class="glyph stroked line-graph"><use xlink:href="#stroked-line-graph"></use></svg> Quản Lý Sản Phẩm</a></li>
                <li class="active"><a href="QuanLyTinTuc.jsp"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg> Quản Lý Tin Tức</a></li>
                <li><a href="QuanLyHoaDon.jsp"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg> Quản Lý Hóa Đơn</a></li>
                <li><a href="QuanLyHoaDonLa.jsp"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg> Quản Lý Hóa Đơn Lạ</a></li>
                
               
            </ul>

        </div><!--/.sidebar-->

        <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
            <div class="row text-center" style="font-weight: bold; font-size: 24px" >
                <ol style="font-weight: bold; font-size: 24px" class="breadcrumb text-center " >
                    <li>DANH SÁCH CÁC TRANG TIN TỨC</li>
                </ol>
            </div>

            <div class="panel panel-default">
                <!-- Default panel contents -->
                <div class="row">
                    <div class="col-md-6">
                        <form action="../loaddmqltt" method="get">
                            <div class="form-group form-inline" style="padding: 20px 0px 10px 10px">
                                <label for="sel1" >Danh Sách Loại Tin</label>
                                <select name="QLDMM" class="form-control " id="sel1" style="width: 200px" >
                                    <%
                                        String selst = "";
                                        for (int i = 0; i < ListLoaiTin.size(); i++) {
                                            Loaitintuc loaitintuc = ListLoaiTin.get(i);
                                            if (idparent.equals(loaitintuc.getIdLoaiTinTuc().toString())) {
                                                selst = "selected";
                                            } else {
                                                selst = "";
                                            }
                                    %>
                                    <option <%= selst%> value="<%= loaitintuc.getIdLoaiTinTuc()%>"><%= loaitintuc.getTenLoaiTinTuc()%></option>
                                    <%
                                        }
                                    %>

                                </select>
                                <button type="submit" class="btn btn-primary">Chọn</button>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-6" style="padding: 20px 0px 10px 10px">
                        <a href="AddTin.jsp">
                            <button type="button" class="btn btn-info">
                                <span class="glyphicon glyphicon-plus"></span> Thêm Tin                              
                            </button>
                        </a>

                    </div>
                </div>
            </div>
            <!-- Table -->



            <table class="table text-left">
                <form action="../XoaNhieuTinServlet" method="get">
                    <thead style="background-color: #F8FCEB">
                        <tr>
                            <th>STT</th>
                            <th>Tiêu Đề</th> 
                            <th>Hình Ảnh</th>
                            <th>Nội Dung Tóm Tắt</th>
                            <th>Ngày Đăng</th>                     
                            <th>Sửa</th>
                             <th>
                                <button type="submit" class="btn btn-sm btn-danger">
                                    <span class="glyphicon glyphicon-remove"></span> Delete
                                </button>
                            </th>
                        </tr>
                    </thead>
                    <%
                        for (int a = 0; a < Listtintuc.size(); a++) {
                            Tintuc tt = Listtintuc.get(a);
                            //bắt đầu vòng lặp
                    %>  
                    <tbody>
                        <tr style="color: #45171D "> 
                            <td><%= a + 1%></td>
                            <td><%= tt.getTieuDe()%></td>
                            <td>
                                <img src="${pageContext.request.contextPath}/<%= folderupload%><%= tt.getImage()%>" 
                                     width="80px" height="80px"/>
                            </td>
                            <td><%= tt.getTomTatTin()%></td>
                            <td><%= tt.getNgayDang()%></td>

                            <td>
                                <a href="#">
                                    <span class="glyphicon glyphicon-pencil"></span>
                                </a>
                            </td>
                            <td>
                                <div class="checkbox" style="margin-top: -15px;">
                                    <label><input type="checkbox" name="cbsp"value="<%= tt.getIdTinTuc()%>"></label>
                                </div>
                            </td>
                        </tr>

                    </tbody>
                    <%
                        }//kết thúc vòng lặp
                    %>


                </form>
            </table>

            <nav aria-label="Page navigation" class="text-center">
                <ul class="pagination ">
                    <li><a  aria-label="Previous" href="#" > <span aria-hidden="true">&laquo;</span></a></li>
                    <li class="active"><a href="#">1</a></li>                                 
                    <li><a href="#">2</a></li>
                    <li ><a aria-label="Next" href="#"><span aria-hidden="true">&raquo;</span></a></li>
                </ul>
            </nav>



        </div>

    </body>
</html>
