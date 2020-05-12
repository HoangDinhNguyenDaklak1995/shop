<%-- 
    Document   : EditUser
    Created on : Dec 9, 2016, 6:23:27 AM
    Author     : TAO-PC
--%>

<%@page import="com.javaweb.model.Users"%>
<%@page import="com.javaweb.service.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Sửa Người Dùng</title>

        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/datepicker3.css" rel="stylesheet" type="text/css"/>  
        <link href="../css/styles.css" rel="stylesheet" type="text/css"/>

        <!--Icons-->
        <script src="js/lumino.glyphs.js"></script>
    </head>

    <body>

        <%
            UserService us = new UserService();
            Users user = null;
            String userID = request.getParameter("iduser");
            user = us.GetUsersByID(userID);
        %>
        
        <section class="container">
            <div class="row">
                <div class="col-md-2">
                    
                </div>
                <div class="col-md-8">
                    <div id="boxshadow" class="jumbotron">
                        <form class="form-horizontal form-edit-user text-center" action="../EditUserServlet" method="post">
                            <input style="display: none;" name="iduser" value="<%=user.getIdUser()%>" />
                            <div class="form-group fullname-custom">
                                <label class="control-label col-md-2" for="FullName">Full Name:</label>
                                <div class="col-sm-10">
                                    <input type="text" name="fullName" value="<%=user.getFullName()%>" class="form-control" required id="Fullname">
                                </div>
                            </div>
                            <div class="form-group ">
                                <label class="control-label col-md-2" for="UserName">Username:</label>
                                <div class="col-sm-10">
                                    <input type="text" name="UserName" value="<%=user.getUserName()%>" class="form-control" required="" id="email">
                                </div>
                            </div>
                            <div class="form-group ">
                                <label class="control-label col-md-2" for="Email">Email:</label>
                                <div class="col-sm-10">
                                    <input type="email" name="Email" value="<%=user.getEmail()%>" class="form-control" required id="username">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-2" for="Username">Giới Tính</label>
                                <div class="col-sm-10">
                                <select name="gioitinh" class="form-control selectpicker" value="<%=user.getGioiTinh()%>"  >
                                    <option>Nam</option>
                                    <option>Nữ</option>
                                    <option >Không Xác Định</option>
                                </select>
                                </div>
                            </div>
                            
                                <div class="form-group ">
                                    <label class="control-label col-md-2" for="DiaChi">Địa Chỉ:</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="DiaChi" value="<%=user.getDiaChi()%>" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label class="control-label col-md-2" for="SDT">SĐT:</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="SDT" value="<%=user.getSdt()%>" class="form-control">
                                    </div>
                                </div>
                                     <div class="form-group ">
                                    <label class="control-label col-md-2" for="SDT">Quyền :</label>
                                    <div class="col-sm-10">
                                        <input type="number" name="quyen" value="<%=user.getIdQuyen()%>" class="form-control">
                                    </div>
                                </div>
                            
                            <br>
                            <button style="font-weight: bold" type="submit" class="btn btn-info">
                                <span class="glyphicon glyphicon-edit"></span> Update</button>
                            
                            </div>
                    
                        </form>
                        
                    </div>
                </div>
                
                <div class="col-md-2">
                    
                </div>
            </div>
        </section>

    </body>

</html>

