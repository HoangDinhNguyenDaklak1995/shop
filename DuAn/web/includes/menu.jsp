<%-- 
    Document   : menu
    Created on : Nov 26, 2016, 4:30:45 PM
    Author     : PhuocDanh
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.javaweb.model.Loaisanpham"%>
<%@page import="com.javaweb.service.LoaisanphamService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    LoaisanphamService loaisanphamService = new LoaisanphamService();
    ArrayList<Loaisanpham> ListMenuCha = null;
    ArrayList<Loaisanpham> LisMenucon = null;
    ListMenuCha=loaisanphamService.GetAllLoaisanpham(0);
    
%>
<div class="menu">
    <div class="cd-dropdown-wrapper">
        <a style="color: #fff; text-transform: uppercase" class="cd-dropdown-trigger" href="#"><i class="fa fa-bars" ></i> Danh Mục Sản Phẩm</a>
        <nav class="cd-dropdown"> 
            <a href="#" class="cd-close">Close</a>
            <ul class="cd-dropdown-content">
                <%
                    //Bắt đầu vòng lặp
                            for(int i=0;i<ListMenuCha.size();i++){
                                Loaisanpham MenuCha = ListMenuCha.get(i);
                                LisMenucon=loaisanphamService.GetAllLoaisanpham(MenuCha.getIdLoaiSanPham());
                %>
                <li class="has-children">
                    <a href="#"><%= MenuCha.getTenLoaiSanPham() %></a>
                    <ul class="cd-secondary-dropdown is-hidden">
                        <li class="go-back"><a href="#">Menu</a></li>
                        <li class="has-children">
                            <a href="#"><%= MenuCha.getTenLoaiSanPham() %></a>
                            <ul class="is-hidden">
                                
                                <%
                                    //Bắt đầu vòng lặp
                                     for(int a=0;a<LisMenucon.size();a++){
                                     Loaisanpham Menucon = LisMenucon.get(a);
                                
                                     
                                %>
                                <li><a href="sanpham.jsp?id=<%= Menucon.getIdLoaiSanPham() %>"> <span style="color: #F57170; padding-right: 5px" class="glyphicon glyphicon-arrow-right"></span> <%= Menucon.getTenLoaiSanPham() %></a></li>
                                <%
                                    }
                                %>
                            </ul>
                        </li> 
                    </ul><!-- .cd-secondary-dropdown --> 
                </li>
                <%
                    }
                %>
            </ul> <!-- .cd-dropdown-content -->
        </nav> <!-- .cd-dropdown -->
    </div> <!-- .cd-dropdown-wrapper -->	 
</div>