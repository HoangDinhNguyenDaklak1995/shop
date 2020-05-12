/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaweb.controller;

import com.javaweb.model.Sanpham;
import com.javaweb.service.SanphamService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author TAO-PC
 */
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 10,
        maxFileSize = 1024 * 1024 * 50,
        maxRequestSize = 1024 * 1024 * 100
)
public class EditSPServlet extends HttpServlet {
    private static final String UPLOAD_DIR = "images/";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         request.setCharacterEncoding("UTF-8");

        try {
            String id = request.getParameter("idsanpham");
            SanphamService sps = new SanphamService();
            Sanpham sp = sps.GetSanPhamTheoId(Integer.parseInt(id));
            
            sp.setTenSanPham(request.getParameter("tensanpham"));
            sp.setGia(Double.parseDouble(request.getParameter("gia")));
            sp.setGiaKm(Double.parseDouble(request.getParameter("giakm")));
            sp.setSoLuong(Integer.parseInt(request.getParameter("soluong")));
            sp.setMoTa(request.getParameter("mota"));
            String linkhinhanh = sp.getImage();
            sp.setImage(uploadFile(request,linkhinhanh));
            
            boolean rs = sps.InsertProduct(sp);
            if(rs){
                response.sendRedirect("../admin/QuanLySP.jsp"); 
            }else{
                response.sendRedirect("../admin/pageadmin.jsp");
            }
        }
        catch (NumberFormatException e) {
            System.out.println(e.toString());
        }
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet EditSPServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet EditSPServlet at " + request.getContextPath() + "</h1>");
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

    private String uploadFile(HttpServletRequest request, String linkhinhanh) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
