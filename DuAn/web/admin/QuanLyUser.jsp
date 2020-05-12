<%-- 
    Document   : QuanLyUser
    Created on : Dec 8, 2016, 2:43:30 PM
    Author     : TAO-PC
--%>

<%@page import="com.javaweb.model.Users"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.javaweb.service.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Quản Lý Thành Viên</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/datepicker3.css" rel="stylesheet" type="text/css"/>  
        <link href="../css/styles.css" rel="stylesheet" type="text/css"/>
        <!--Icons-->
        <script src="js/lumino.glyphs.js"></script>
    </head>

    <body>
        <%
            UserService user = new UserService();
            ArrayList<Users> ListUser = null;
            ListUser = user.GetAllUsers();
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
                    <input type="text" class="form-control" placeholder="Search">
                </div>
            </form>
            <ul class="nav menu">
                <li><a href="pageadmin.jsp"><svg class="glyph stroked dashboard-dial"><use xlink:href="#stroked-dashboard-dial"></use></svg> Dashboard</a></li>
                <li class="active"><a href="QuanLyUser.jsp"><svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"></use></svg> Quản Lý User</a></li>
                <li><a href="QuanLySP.jsp"><svg class="glyph stroked line-graph"><use xlink:href="#stroked-line-graph"></use></svg> Quản Lý Sản Phẩm</a></li>
                <li><a href="QuanLyTinTuc.jsp"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg> Quản Lý Tin Tức</a></li>
                <li><a href="QuanLyHoaDon.jsp"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg> Quản Lý Hóa Đơn</a></li>
                <li><a href="QuanLyHoaDonLa.jsp"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg> Quản Lý Hóa Đơn Lạ</a></li>
                
                
            </ul>

        </div><!--/.sidebar-->

        <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
            <div class="row text-center" style="font-weight: bold; font-size: 24px" >
                <ol class="breadcrumb text-center " >
                    <li>DANH SÁCH NGƯỜI DÙNG</li>
                </ol>
            </div>
            
            <table class="table">
                <form action="../XoaAllSPServlet" method="get" >
                    <thead style="background-color: #F8FCEB">
                        <tr>
                            <th>STT</th>  
                            <th>Username</th>
                            <th>Fullname</th>                       
                            <th>Email</th>    
                            <th>Giới Tính</th>
                            <th>Địa Chỉ</th>
                            <th>SĐT</th>
                            <th>Sửa</th>
                            <th>
                                <button type="submit" class="btn btn-sm btn-danger">
                                    <span class="glyphicon glyphicon-remove"></span> Delete
                                </button>
                            </th>
                        </tr>
                    </thead>
                    <%
                        for (int i = 0; i < ListUser.size(); i++) {
                            Users us = ListUser.get(i);
                            //bắt đầu vòng lặp
                    %>  
                    <tbody style="color: #6C7A89 ">
                        <tr>
                            <td><%=i + 1%> </td>
                            <td><%= us.getUserName()%></td>
                            <td><%=us.getFullName()%></td>  
                            <td><%=us.getEmail()%></td>
                            <td><%=us.getGioiTinh()%></td>  
                            <td><%=us.getDiaChi()%></td>
                            <td><%=us.getSdt()%></td>
                            <td>
                                <a href="EditUser.jsp?iduser=<%= us.getIdUser()%>">
                                    <span class="glyphicon glyphicon-pencil"></span>
                                </a>
                            </td>
                            <td class="text-center">
                                <input type="checkbox" name="cbsp"value="<%= us.getIdUser()%>">
                            </td>
                        </tr>
                    </tbody>
                    <%
                        }                        //kết thúc vòng lặp
                    %>
                    </from>
                    </table>
                    <!--
                    <div class="container">
                        <div class="row">
                            <div class="col-md-2 text-left">
                                <input type="submit" value="Xóa Nhiều"/>
                            </div>
                            <div class="col-md-10">
                                <nav aria-label="Page navigation" class="text-center">
                                    <ul class="pagination ">
                                        <li><a  aria-label="Previous" href="#" > <span aria-hidden="true">&laquo;</span></a></li>
                                        <li class="active"><a href="#">1</a></li>                                 
                                        <li><a href="#">2</a></li>
                                        <li ><a aria-label="Next" href="#"><span aria-hidden="true">&raquo;</span></a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>   -->
                    <nav aria-label="Page navigation" class="text-center">
                        <ul class="pagination ">
                            <li><a  aria-label="Previous" href="#" > <span aria-hidden="true">&laquo;</span></a></li>
                            <li class="active"><a href="#">1</a></li>                                 
                            <li><a href="#">2</a></li>
                            <li ><a aria-label="Next" href="#"><span aria-hidden="true">&raquo;</span></a></li>
                        </ul>
                    </nav>
                    
                    
                    </div>
                    
                    <!--/.main-->\
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

