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
public class RegisterServlet extends HttpServlet {

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
        
        
        String Password,Email,UserName,FullName,rpw,Sdt,gioitinh,DiaChi,quyen;

        Email = request.getParameter("Email");
        Password = request.getParameter("Password");
        UserName = request.getParameter("UserName");
        FullName = request.getParameter("FullName");
        rpw = request.getParameter("Re_Password");
        Sdt = request.getParameter("phone");
        DiaChi = request.getParameter("DiaChi");
        gioitinh = request.getParameter("gioitinh");
     
        HttpSession session = request.getSession();
        
        if (Password.equals(rpw)) {
            UserService us = new UserService();
            String mkmh = md5.md5Encryption(Password);
            
            Users user = new Users();
            user.setUserName(UserName);
            user.setPassWord(mkmh);
            user.setFullName(FullName);
            user.setEmail(Email);
            user.setGioiTinh(gioitinh);
            user.setDiaChi(DiaChi);
            user.setSdt(Sdt);         
            user.setIdQuyen(4);
            us.Insertservice(user);           
            session.setAttribute("IdUser", user.getIdUser());
            String url = "/"
                    + "index.jsp";
            getServletContext().getRequestDispatcher(url).forward(request, response);
        } else {
            String url = "/dangky.jsp";
            getServletContext().getRequestDispatcher(url).forward(request, response);
        }
//        
        
        
        
        
        
        
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisterServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterServlet at " + request.getContextPath() +"</h1>");//+Password+Email+UserName+FullName+rpw+Sdt+gioitinh+DiaChi// 
            out.println("</body>");
            out.println("</html>");
        }
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
