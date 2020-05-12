/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaweb.controller;

import com.javaweb.model.Binhluansanpham;
import com.javaweb.model.Sanpham;
import com.javaweb.model.Users;
import com.javaweb.service.BinhLuanSanPhamService;
import com.javaweb.service.SanphamService;
import com.javaweb.service.UserService;
import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nguyễn Chí Tuấn
 */
public class BinhLuanSanPhamServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        BinhLuanSanPhamService blsps = new BinhLuanSanPhamService();
        
        String noiDung,idUser;
        noiDung = request.getParameter("noidung");
        idUser = request.getParameter("iduser");
        
        int idsanpham = Integer.parseInt(request.getParameter("idsanpham"));
        
        Date date = new Date();
        
        UserService us = new UserService();
        Users user = us.GetUsersByID(idUser);
        SanphamService sps = new SanphamService();
        Sanpham sp = sps.GetSanPhamTheoId(idsanpham);

        Binhluansanpham binhluan = new Binhluansanpham(sp, user, noiDung, date);
        boolean rs = blsps.ThemBinhLuanSanPham(binhluan);
        if(rs){
            response.sendRedirect("chitietsanpham.jsp?idsanpham="+idsanpham);
        }

        
        
        
        
        
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet BinhLuanSanPhamServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet BinhLuanSanPhamServlet at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
