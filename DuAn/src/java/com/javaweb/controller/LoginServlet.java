/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaweb.controller;

import com.javaweb.model.Users;
import com.javaweb.service.UserService;
import com.javaweb.service.md5;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author TAO-PC
 */
public class LoginServlet extends HttpServlet {

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

        String Password, email;

        email = request.getParameter("Email");
        Password = request.getParameter("Password");

        HttpSession session = request.getSession();

        boolean kiemTra;
        UserService us = new UserService();
        String mkmh = md5.md5Encryption(Password);
        kiemTra = us.CheckLogin(email, mkmh);

        if (kiemTra) {
            Users user = us.GetUsersByEmailorUsersName(email);
            session.setAttribute("IdUser", user.getIdUser());
            if (user.getIdQuyen() != 4) {
                response.sendRedirect("admin/pageadmin.jsp");
            } else if (request.getParameter("idsanpham") != null) {
                response.sendRedirect("chitietsanpham.jsp?idsanpham=" + Integer.parseInt(request.getParameter("idsanpham")));
            } else if (request.getParameter("dangnhapmuahang") != null) {
                response.sendRedirect("showcart.jsp");
            } else {
                String url = "/index.jsp";
                getServletContext().getRequestDispatcher(url).forward(request, response);
            }
        } else {
            String url="";
            if(request.getParameter("idsanpham") != null){
                url="/chitietsanpham.jsp?idsanpham="+request.getParameter("idsanpham");       
                
            }
            else{
                if(request.getParameter("dangnhapmuahang") != null){
                    url="/showcart.jsp";
                }
                else{
                    url = "/dangnhap.jsp";
                    
                }
            }
            getServletContext().getRequestDispatcher(url).include(request, response);
                    try (PrintWriter out = response.getWriter()) {
                        /* TODO output your page here. You may use following sample code. */

                        out.println("<script>$(document).ready(function() {\n"
                                + "    alert(\"Đăng Nhập Không Thành Công, Vui Lòng Kiểm Tra Tài Khoản Hoặc Mật Khầu\");"
                                + "});</script>");

                    }
        }

//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet LoginServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet LoginServlet at " + request.getContextPath()+"</h1>");
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
