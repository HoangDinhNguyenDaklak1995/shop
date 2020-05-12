package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.javaweb.model.Sanpham;
import com.javaweb.service.SanphamService;
import com.javaweb.model.Chitietdonhang;
import com.javaweb.service.ChiTietHoaDonService;
import com.javaweb.model.Users;
import com.javaweb.service.UserService;
import com.javaweb.service.HoaDonService;
import com.javaweb.model.Donhang;
import com.javaweb.service.HoaDonLaService;
import java.util.ArrayList;

public final class QuanLyHoaDon_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>Lumino - Charts</title>\n");
      out.write("        <title>Bootstrap Example</title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("        <link href=\"../css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"../css/datepicker3.css\" rel=\"stylesheet\" type=\"text/css\"/>  \n");
      out.write("        <link href=\"../css/styles.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("        <!--Icons-->\n");
      out.write("        <script src=\"js/lumino.glyphs.js\"></script>\n");
      out.write("\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("        <script src=\"js/html5shiv.js\"></script>\n");
      out.write("        <script src=\"js/respond.min.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        ");

            HoaDonService HD = new HoaDonService();
            ArrayList<Donhang> listDH = null;
            ArrayList<Chitietdonhang> ListCTDH = null;
            listDH = HD.GetAllDonHang();
            UserService us = new UserService();
            SanphamService SPService = new SanphamService();
            ChiTietHoaDonService CTHDservice = new ChiTietHoaDonService();

        
      out.write("\n");
      out.write("\n");
      out.write("        <nav class=\"navbar navbar-inverse navbar-fixed-top\" role=\"navigation\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#sidebar-collapse\">\n");
      out.write("                        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    <a class=\"navbar-brand\" href=\"../index.jsp\"><span>Lumino</span>Admin</a>\n");
      out.write("                    <ul class=\"user-menu\">\n");
      out.write("                        <li class=\"dropdown pull-right\">\n");
      out.write("                            <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\"><svg class=\"glyph stroked male-user\"><use xlink:href=\"#stroked-male-user\"></use></svg> User <span class=\"caret\"></span></a>\n");
      out.write("                            <ul class=\"dropdown-menu\" role=\"menu\">\n");
      out.write("                                <li><a href=\"#\"><svg class=\"glyph stroked male-user\"><use xlink:href=\"#stroked-male-user\"></use></svg> Profile</a></li>\n");
      out.write("                                <li><a href=\"#\"><svg class=\"glyph stroked gear\"><use xlink:href=\"#stroked-gear\"></use></svg> Settings</a></li>\n");
      out.write("                                <li><a href=\"#\"><svg class=\"glyph stroked cancel\"><use xlink:href=\"#stroked-cancel\"></use></svg> Logout</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div><!-- /.container-fluid -->\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("        <div id=\"sidebar-collapse\" class=\"col-sm-3 col-lg-2 sidebar\">\n");
      out.write("            <form role=\"search\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <input type=\"text\" class=\"form-control\" placeholder=\"Search\">\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("            <ul class=\"nav menu\">\n");
      out.write("                <li><a href=\"pageadmin.jsp\"><svg class=\"glyph stroked dashboard-dial\"><use xlink:href=\"#stroked-dashboard-dial\"></use></svg> Dashboard</a></li>\n");
      out.write("                <li><a href=\"QuanLyUser.jsp\"><svg class=\"glyph stroked calendar\"><use xlink:href=\"#stroked-calendar\"></use></svg> Quản Lý User</a></li>\n");
      out.write("                <li><a href=\"QuanLySP.jsp\"><svg class=\"glyph stroked line-graph\"><use xlink:href=\"#stroked-line-graph\"></use></svg> Quản Lý Sản Phẩm</a></li>\n");
      out.write("                <li><a href=\"QuanLyTinTuc.jsp\"><svg class=\"glyph stroked table\"><use xlink:href=\"#stroked-table\"></use></svg> Quản Lý Tin Tức</a></li>\n");
      out.write("                <li class=\"active\"><a href=\"QuanLyHoaDon.jsp\"><svg class=\"glyph stroked pencil\"><use xlink:href=\"#stroked-pencil\"></use></svg> Quản Lý Hóa Đơn</a></li>\n");
      out.write("                <li><a href=\"QuanLyHoaDonLa.jsp\"><svg class=\"glyph stroked pencil\"><use xlink:href=\"#stroked-pencil\"></use></svg> Quản Lý Hóa Đơn Lạ</a></li>\n");
      out.write("                <li\n");
      out.write("                \n");
      out.write("            </ul>\n");
      out.write("\n");
      out.write("        </div><!--/.sidebar-->\n");
      out.write("\n");
      out.write("        <div class=\"col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main\">\t\t\t\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <ol class=\"breadcrumb\">\n");
      out.write("                    <li><a href=\"#\"><svg class=\"glyph stroked home\"><use xlink:href=\"#stroked-home\"></use></svg></a></li>\n");
      out.write("                    <li class=\"active\">Icons</li>\n");
      out.write("                </ol>\n");
      out.write("            </div><!--/.row-->\n");
      out.write("\n");
      out.write("\n");
      out.write("            <table class=\"table\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>STT</th>  \n");
      out.write("                        <th>ID Đơn Hàng</th>\n");
      out.write("                        <th>Tên Khách Hàng </th>  \n");
      out.write("                        <th>Ngày Tạo </th>                       \n");
      out.write("                        <th>Tổng Tiền</th> \n");
      out.write("                        <th>Ghi Chú</th>\n");
      out.write("                        <th>Chi Tiết</th>\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("                </thead>\n");
      out.write("                ");
                    for (int i = 0; i < listDH.size(); i++) {
                        Donhang dh = listDH.get(i);
                        Users usset = us.GetUsersByID(dh.getUsers().getIdUser().toString());

                
      out.write("  \n");
      out.write("\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("\n");
      out.write("                        <td>");
      out.print(i + 1);
      out.write(" </td> \n");
      out.write("\n");
      out.write("                        <td>\n");
      out.write("                            ");
      out.print( dh.getIdDonHang());
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                        <td>");
      out.print( usset.getFullName());
      out.write("</td>  \n");
      out.write("\n");
      out.write("\n");
      out.write("                        <td>");
      out.print( dh.getNgayTao());
      out.write("</td>    \n");
      out.write("\n");
      out.write("                        <td>");
      out.print(dh.getTongTien());
      out.write("</td>  \n");
      out.write("                        <td>");
      out.print(dh.getGhiChu());
      out.write("</td> \n");
      out.write("                        <td>                           \n");
      out.write("                            <button type=\"button\" class=\"btn btn-info\" onclick=\"xemchitiet(");
      out.print(dh.getIdDonHang());
      out.write(")\" >Xem</button>\n");
      out.write("\n");
      out.write("                        </td>\n");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                </tbody>\n");
      out.write("                ");
                }                        //kết thúc vòng lặp
                
      out.write("\n");
      out.write("\n");
      out.write("            </table>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <ul class=\"pagination pager\">\n");
      out.write("                <li><a href=\"\">Previous</a></li>\n");
      out.write("                <li><a href=\"\">1</a><li>\n");
      out.write("                <li><a href=\"\">2</a><li>\t\n");
      out.write("                <li><a href=\"\">3</a><li>\t\n");
      out.write("                <li><a href=\"\">Next</a></li>\n");
      out.write("            </ul>\n");
      out.write("            ");

                if (request.getParameter("idhoadon") != null) {
                    ListCTDH = CTHDservice.GetAllCTDonHangByIDDonHang(Integer.parseInt(request.getParameter("idhoadon")));
            
      out.write("\n");
      out.write("            <div class=\"modal fade\" id=\"myModal\" role=\"dialog\">                             \n");
      out.write("                <div class=\"modal-dialog\">\n");
      out.write("                    <!-- Modal content-->\n");
      out.write("                    <div class=\"modal-content\">\n");
      out.write("                        <div class=\"modal-header\">\n");
      out.write("                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("                            <h4 class=\"modal-title text-center\">Chi Tiết Hóa Đơn</h4>\n");
      out.write("                            <div class=\"modal-body\">\n");
      out.write("                                <table class=\"table\">\n");
      out.write("                                    <thead>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th>Số Thứ Tự</th>\n");
      out.write("                                            <th>Tên Sản Phẩm</th>\n");
      out.write("                                            <th>Số Lượng</th>\n");
      out.write("                                            <th>Thành Tiền</th>\n");
      out.write("                                            <th>Ghi Chú</th>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                    ");

                                        for (int j = 0; j < ListCTDH.size(); j++) {
                                            Chitietdonhang CTDH = ListCTDH.get(j);
                                            Sanpham sp = SPService.GetSanPhamTheoId(CTDH.getSanpham().getIdSanPham());
                                    
      out.write("\n");
      out.write("                                        <tbody>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print( j+1 );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print( sp.getTenSanPham() );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print( CTDH.getSoLuong() );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print( CTDH.getThanhTien());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print( CTDH.getGhiChu());
      out.write("</td>\n");
      out.write("                                            </tr>                                           \n");
      out.write("                                        </tbody>\n");
      out.write("                                    ");

                                        }
                                    
      out.write("\n");
      out.write("                                </table>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-danger\" data-dismiss=\"modal\">Close</button>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\t<!--/.main-->\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("            <script>\n");
      out.write("\n");
      out.write("                function xemchitiet(idhoadon) {\n");
      out.write("                    $('#idhoadon').val(idhoadon);\n");
      out.write("                    window.location.href = \"QuanLyHoaDon.jsp?idhoadon=\" + idhoadon;\n");
      out.write("\n");
      out.write("                }\n");
      out.write("                $(\"#myModal\").modal('show');\n");
      out.write("            </script>\n");
      out.write("\n");
      out.write("            <script src=\"js/jquery-1.11.1.min.js\"></script>\n");
      out.write("            <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("            <script src=\"js/chart.min.js\"></script>\n");
      out.write("            <script src=\"js/chart-data.js\"></script>\n");
      out.write("            <script src=\"js/easypiechart.js\"></script>\n");
      out.write("            <script src=\"js/easypiechart-data.js\"></script>\n");
      out.write("            <script src=\"js/bootstrap-datepicker.js\"></script>\n");
      out.write("            <script>\n");
      out.write("                !function ($) {\n");
      out.write("                    $(document).on(\"click\", \"ul.nav li.parent > a > span.icon\", function () {\n");
      out.write("                        $(this).find('em:first').toggleClass(\"glyphicon-minus\");\n");
      out.write("                    });\n");
      out.write("                    $(\".sidebar span.icon\").find('em:first').addClass(\"glyphicon-plus\");\n");
      out.write("                }(window.jQuery);\n");
      out.write("\n");
      out.write("                $(window).on('resize', function () {\n");
      out.write("                    if ($(window).width() > 768)\n");
      out.write("                        $('#sidebar-collapse').collapse('show')\n");
      out.write("                })\n");
      out.write("                $(window).on('resize', function () {\n");
      out.write("                    if ($(window).width() <= 767)\n");
      out.write("                        $('#sidebar-collapse').collapse('hide')\n");
      out.write("                })\n");
      out.write("            </script>\t\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
