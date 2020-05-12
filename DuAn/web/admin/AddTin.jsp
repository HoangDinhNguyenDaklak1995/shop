<%-- 
    Document   : AddTin
    Created on : Dec 30, 2016, 10:16:49 AM
    Author     : PhuocDanh
--%>

<%@page import="com.javaweb.model.Loaitintuc"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.javaweb.service.LoaiTinTucService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm Tin Tức</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/datepicker3.css" rel="stylesheet" type="text/css"/>  
        <link href="../css/styles.css" rel="stylesheet" type="text/css"/>
        <script src="//cdn.ckeditor.com/4.6.1/full/ckeditor.js"></script>
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
        <%
            LoaiTinTucService LTTService = new LoaiTinTucService();
            ArrayList<Loaitintuc> ListLoaiTin = null;
            ListLoaiTin = LTTService.GetAllLoaiTinTuc();
        %>
        <section class="container-fluid">

            <div id="boxshadow" class="jumbotron">
                <form class="form-horizontal form-edit-user text-center" action="../ThemTinServlet" method="post" enctype="multipart/form-data">
                    <h3>Thêm Tin Tức</h3>
                    <input type="hidden" name="iduser" value="<%= session.getAttribute("IdUser")%>"/>
                    <div class="form-group fullname-custom">
                        <label class="control-label col-md-2" for="tieudetin">Tiêu Đề Tin:</label>
                        <div class="col-sm-10">
                            <input type="text" name="tieude" value="" class="form-control" required id="tieude">
                        </div>
                    </div>  
                    <div class="form-group ">
                        <label class="control-label col-md-2" for="loaitin">Loại Tin:</label>
                        <div class="col-sm-10">
                            <select name="QLDMM" class="form-control " id="sel1"  >
                                <%

                                    for (int i = 0; i < ListLoaiTin.size(); i++) {
                                        Loaitintuc loaitintuc = ListLoaiTin.get(i);

                                %>
                                <option value="<%= loaitintuc.getIdLoaiTinTuc()%>"><%= loaitintuc.getTenLoaiTinTuc()%></option>
                                <%
                                    }
                                %>

                            </select>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label class="control-label col-md-2" for="tomtat">Tóm Tắt Tin:</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" name="tomtat" rows="3" required ></textarea>
                        </div>
                    </div>

                    <div class="form-group ">
                        <label class="control-label col-md-2" for="noidung">Nội Dung:</label>
                        <div class="col-sm-10">
                            <textarea class="form-control ckeditor" name="noidung" rows="5" required ></textarea>
                        </div>
                    </div>
                    <div class="form-group img-responsive">
                        <div class="col-md-3">                                  
                        </div>
                        <div class="col-md-6">

                            <div id="imageOut"><img class="img-thumbnail" id="output"/></div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-2" for="photo">Hình Đại Diện</label>
                        <div class="col-md-10">
                            <input type="file" name="photo" accept="image/*" onchange="loadFile(event)" required/>
                        </div>
                    </div>        
                    <div class="form-group">
                        <br><br>
                        <button style="font-weight: bold" type="submit" class="btn btn-info"><span class="glyphicon glyphicon-edit"></span> Update</button>
                    </div>
                </form>
                <div class="form-group text-center">
                    <a href="AddTin.jsp">
                        <button style="font-weight: bold" class="btn btn-info"><span class="glyphicon glyphicon-arrow-left"></span> Cancel</button>
                    </a>                                                   
                </div>
            </div>
        </section>
    </body>
</html>
