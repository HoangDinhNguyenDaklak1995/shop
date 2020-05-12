/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaweb.controller;

import com.javaweb.model.Sanpham;
import com.javaweb.service.FileService;
import com.javaweb.service.SanphamService;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Tuấn
 */
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 10,
        maxFileSize = 1024 * 1024 * 50,
        maxRequestSize = 1024 * 1024 * 100
)
public class SuaSanPhamServlet extends HttpServlet {
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
            try {
                sp.setImage(uploadFile(request,linkhinhanh));
            } catch (IOException | ServletException e) {
                sp.setImage(linkhinhanh);
                System.out.println(e.toString());
            }
            
            boolean rs = sps.InsertProduct(sp);
            if(rs){
                response.sendRedirect("admin/QuanLySP.jsp"); 
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
//            out.println("<title>Servlet SuaSanPhamServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet SuaSanPhamServlet at " + request.getContextPath() + "</h1>");
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
    
    
    private String uploadFile(HttpServletRequest request,String image) throws IOException, ServletException {
        String fileName = "";
        try {
            Part filePart = request.getPart("photo");
            
            //fileName: picture-001.jpg
            fileName = (String) getFileName(filePart);
            fileName = FileService.ChangeFileName(fileName);
            //applicationPath: C:\Users\Lonely\Documents\NetBeansProjects\Shop_Bonfire\build\web
            String applicationPath = request.getServletContext().getRealPath("");

            //File.separator: \ 
            String basePath = applicationPath + File.separator + UPLOAD_DIR + File.separator;

            InputStream inputStream = null;
            OutputStream outputStream = null;
            try {
                File outputFilePath = new File(basePath + fileName);
                inputStream = filePart.getInputStream();
                outputStream = new FileOutputStream(outputFilePath);
                int read = 0;
                final byte[] bytes = new byte[1024];
                while ((read = inputStream.read(bytes)) != -1) {
                    outputStream.write(bytes, 0, read);
                }
            } catch (Exception e) {
                e.printStackTrace();
                fileName = "";
            } finally {
                if (inputStream != null) {
                    inputStream.close();
                }
                if (outputStream != null) {
                    outputStream.close();
                }
            }
        } catch (Exception e) {
            fileName = "";
        }
        if(fileName=="")
            return image;
        return fileName;
    }

    private String getFileName(Part part) {
        final String partHeader = part.getHeader("content-disposition");
        System.out.println("*****partHeader :" + partHeader);
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
}
