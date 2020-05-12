<%-- 
    Document   : binhluansanpham
    Created on : Nov 29, 2016, 2:18:24 PM
    Author     : Administrator
--%>

<%@page import="com.javaweb.model.Sanpham"%>
<%@page import="com.javaweb.service.SanphamService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.javaweb.model.Binhluansanpham"%>
<%@page import="com.javaweb.service.BinhLuanSanPhamService"%>
<%@page import="com.javaweb.model.Users"%>
<%@page import="com.javaweb.service.UserService"%>
<%@page import="com.javaweb.service.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
%>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="jumbotron">
                <div class="media">
                    <%  
                        
                            UserService us = new UserService();
                        if(session.getAttribute("IdUser")!=null){
                            
                            Users user = us.GetUsersByID(session.getAttribute("IdUser").toString());
                            %>
                            <form action="BinhLuanSanPhamServlet" method="post">
                                <div class="media-left">
                                    <img src="images/user_T.jpg" class="media-object" style="width:40px;height: 40px;">
                                </div>
                                <div class="media-body">
                                    <p><b><%= user.getFullName() %></b></p>
                                </div>
                                    <input type="hidden" name="iduser" value="<%= user.getIdUser() %>">
                                    <input type="hidden" name="idsanpham" value="<%= request.getParameter("idsanpham") %>">
                                <textarea name="noidung" placeholder="Bạn nghĩ gì về sản phẩm này?" class="form-control" rows="4" id="comment"></textarea>
                                <br>
                                <button type="submit" class="btn btn-primary">Gửi Bình Luận</button>
                            </form>
                            <%
                        }
                        else
                        {
                           %>
                                <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Đăng nhập để nhận xét</button>
                                <!-- Modal -->
                                <div class="modal fade" id="myModal" role="dialog">
                                    <div class="modal-dialog modal-sm">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">Đăng nhập</h4>
                                            </div>
                                            <div class="modal-body">
                                                <form action="LoginServlet" method="post">
                                                    <div class="input-group" style="padding-bottom: 5px;">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                        <input id="email" type="text" class="form-control" name="Email" placeholder="Username or Email">
                                                    </div>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                                        <input id="password" type="password" class="form-control" name="Password" placeholder="Password">
                                                        <input type="hidden" name="idsanpham" value="<%= request.getParameter("idsanpham") %>">
                                                    </div>
                                                    <br>
                                                    <div class="text-center">
                                                        <button type="submit" class="btn btn-success">Đăng nhập</button>
                                                    </div>
                                                </form>

                                            </div>
                                            <div class="modal-footer">
                                                
                                            </div>
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
    <div class="row">
        <div class="col-md-8">
            <div class="panel panel-success">
                <div class="panel-heading">Nhận xét về sản phẩm</div>
                <div class="panel-body" style="height:  500px; overflow: scroll;">
                    <!--Bắt đầu ô show bình luận ở đây-->
                    <%
                        BinhLuanSanPhamService binhluanservice = new BinhLuanSanPhamService();
                        ArrayList<Binhluansanpham> Listbinhluan = null;
                        Listbinhluan = binhluanservice.GetAllBinhLuanTheoIdSanPham(request.getParameter("idsanpham"));
                       
                    %>
                    <%
                        for(int i = 0; i < Listbinhluan.size(); i++){
                            Binhluansanpham binhluan = Listbinhluan.get(i);
                                Users userbinhluan=us.GetUsersByID(binhluan.getUsers().getIdUser().toString());
                            %>
                            <div class="media">
                                <div class="media-left">
                                    <img src="images/user_T.jpg" class="media-object" style="width:60px;height: 60px;">
                                </div>
                                <div class="media-body">
                                    <h4 class="media-heading"><b><%= userbinhluan.getFullName() %><small class="text-right"><i> Đã bình luận vào: <%= binhluan.getNgayBinhLuan() %></i></small></h4>
                                    <p><%= binhluan.getNoiDung()%></p>
                                </div>
                            </div>
                            <hr style="border: 1px dashed #999;">
                            <%
                        }
                    %>
                    
                </div> 
            </div>
        </div>
    </div>
</div>
