<%-- 
    Document   : EditSP
    Created on : Dec 27, 2016, 7:57:18 PM
    Author     : TAO-PC
--%>

<%@page import="com.javaweb.service.SanphamService"%>
<%@page import="com.javaweb.model.Sanpham"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sửa Sản Phẩm</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/datepicker3.css" rel="stylesheet" type="text/css"/>  
        <link href="../css/styles.css" rel="stylesheet" type="text/css"/>
        <script>
            var loadFile = function (event) {
                var reader = new FileReader();
                reader.onload = function () {
                    var output = document.getElementById('output');
                    output.src = reader.result;
                };
                reader.readAsDataURL(event.target.files[0]);
            };// code hiện thị hình ảnh trước khi load
        </script>
    </head>
    <body>
        <!-- Modal -->
        <%
            SanphamService spsv = new SanphamService();
            Sanpham xp = null;
            String ID = request.getParameter("idsanpham");
            xp = spsv.GetSanPhamTheoId(Integer.parseInt(ID));
        %>
        <section class="container">
            <div class="row">
                <div class="col-md-2">

                </div>
                <div class="col-md-8">
                    <div id="boxshadow" class="jumbotron">
                        <form class="form-horizontal form-edit-user text-center" action="../SuaSanPhamServlet" method="post" enctype="multipart/form-data">
                            <h3>Sửa Sản Phẩm</h3>
                            <input style="display: none;" name="idsanpham" value="<%= xp.getIdSanPham()%>" />
                            <div class="form-group fullname-custom">
                                <label class="control-label col-md-2" for="Fullname">Tên Sản Phẩm:</label>
                                <div class="col-sm-10">
                                    <input type="text" name="tensanpham" value="<%= xp.getTenSanPham()%>" class="form-control" required id="Fullname">
                                </div>
                            </div>
                            <div class="form-group ">
                                <label class="control-label col-md-2" for="gia">Giá :</label>
                                <div class="col-sm-10">
                                    <input type="text" name="gia" value="<%= xp.getGia()%>" class="form-control" required="" id="gia">
                                </div>
                            </div>
                            <div class="form-group ">
                                <label class="control-label col-md-2" for="giakm">Giá Khuyễn Mãi:</label>
                                <div class="col-sm-10">
                                    <input type="text" name="giakm" value="<%= xp.getGiaKm()%>" class="form-control">
                                </div>
                            </div>
                            <div class="form-group ">
                                <label class="control-label col-md-2" for="soluong">Số Lượng:</label>
                                <div class="col-sm-10">
                                    <input type="number" name="soluong" value="<%= xp.getSoLuong() %>" class="form-control">
                                </div>
                            </div>
                            <div class="form-group ">
                                <label class="control-label col-md-2" for="mota">Mô Tả:</label>
                                <div class="col-sm-10">
                                    <input type="text" name="mota" value="<%= xp.getMoTa()%>" class="form-control">
                                </div>
                            </div>
                            <div class="form-group img-responsive">
                                <div class="col-md-6">
                                    <h3>Image</h3>
                                    <br>
                                    <%
                                        if (xp.getImage() != null) {
                                            String folderupload = getServletContext().getInitParameter("file-upload");
                                    %>
                                    <img class="img-thumbnail" src="${pageContext.request.contextPath}/<%=folderupload%><%= xp.getImage()%>" width="200px" height="200px" />
                                    <%
                                        }
                                    %>

                                </div>
                                <div class="col-md-6">
                                    <h3>New Image</h3>
                                    <br>
                                    <div id="imageOut"><img class="img-thumbnail" id="output"/></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-md-2" for="photo">Change Image</label>
                                <div class="col-md-10">
                                    <input type="file" name="photo" accept="image/*" onchange="loadFile(event)" />
                                </div>
                            </div>        

                            <div class="form-group">
                                <br><br>
                                <button style="font-weight: bold" type="submit" class="btn btn-info"><span class="glyphicon glyphicon-edit"></span> Update</button>

                            </div>
                        </form>
                        <div class="form-group text-center">
                            <button style="font-weight: bold" class="btn btn-info"><span class="glyphicon glyphicon-arrow-left"></span> Cancel</button>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="col-md-2">

                </div>
            </div>
        </section>

        <!-- kết thúc modal sửa sản phẩm -->

    </body>
</html>
