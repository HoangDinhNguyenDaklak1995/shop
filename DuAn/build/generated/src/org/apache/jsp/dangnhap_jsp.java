package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.javaweb.service.GioHang;
import com.javaweb.model.Users;
import com.javaweb.service.UserService;
import java.util.ArrayList;
import com.javaweb.model.Loaisanpham;
import com.javaweb.service.LoaisanphamService;

public final class dangnhap_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(6);
    _jspx_dependants.add("/includes/headtag-dangkydangnhap.jsp");
    _jspx_dependants.add("/includes/header.jsp");
    _jspx_dependants.add("/includes/menu.jsp");
    _jspx_dependants.add("/includes/footer-top.jsp");
    _jspx_dependants.add("/includes/subscribe.jsp");
    _jspx_dependants.add("/includes/footer.jsp");
  }

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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Đăng Nhập</title>\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<meta name=\"keywords\" content=\"Smart Bazaar Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \r\n");
      out.write("      SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design\" />\r\n");
      out.write("<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false);\r\n");
      out.write("    function hideURLbar(){ window.scrollTo(0,1); } </script>\r\n");
      out.write("<!-- Custom Theme files -->\r\n");
      out.write("<link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\r\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" /> \r\n");
      out.write("<link href=\"css/animate.min.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" /><!-- animation -->\r\n");
      out.write("<link href=\"css/menu.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" /> <!-- menu style -->  \r\n");
      out.write("<!-- //Custom Theme files -->\r\n");
      out.write("<!-- font-awesome icons -->\r\n");
      out.write("<link href=\"css/font-awesome.css\" rel=\"stylesheet\"> \r\n");
      out.write("<!-- //font-awesome icons -->\r\n");
      out.write("<!-- js -->\r\n");
      out.write("<script src=\"js/jquery-2.2.3.min.js\"></script> \r\n");
      out.write("<script src=\"js/jquery-scrolltofixed-min.js\" type=\"text/javascript\"></script><!-- fixed nav js -->\r\n");
      out.write("<script>\r\n");
      out.write("    $(document).ready(function () {\r\n");
      out.write("\r\n");
      out.write("        // Dock the header to the top of the window when scrolled past the banner. This is the default behaviour.\r\n");
      out.write("\r\n");
      out.write("        $('.header-two').scrollToFixed();\r\n");
      out.write("        // previous summary up the page.\r\n");
      out.write("\r\n");
      out.write("        var summaries = $('.summary');\r\n");
      out.write("        summaries.each(function (i) {\r\n");
      out.write("            var summary = $(summaries[i]);\r\n");
      out.write("            var next = summaries[i + 1];\r\n");
      out.write("\r\n");
      out.write("            summary.scrollToFixed({\r\n");
      out.write("                marginTop: $('.header-two').outerHeight(true) + 10,\r\n");
      out.write("                zIndex: 999\r\n");
      out.write("            });\r\n");
      out.write("        });\r\n");
      out.write("    });\r\n");
      out.write("</script>\r\n");
      out.write("<!-- //js --> \r\n");
      out.write("<!-- web-fonts -->\r\n");
      out.write("<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>\r\n");
      out.write("<link href='//fonts.googleapis.com/css?family=Lovers+Quarrel' rel='stylesheet' type='text/css'>\r\n");
      out.write("<link href='//fonts.googleapis.com/css?family=Offside' rel='stylesheet' type='text/css'> \r\n");
      out.write("<!-- web-fonts -->  \r\n");
      out.write("<!-- start-smooth-scrolling -->\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/move-top.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/easing.js\"></script>\t\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("    jQuery(document).ready(function ($) {\r\n");
      out.write("        $(\".scroll\").click(function (event) {\r\n");
      out.write("            event.preventDefault();\r\n");
      out.write("            $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);\r\n");
      out.write("        });\r\n");
      out.write("    });\r\n");
      out.write("</script>\r\n");
      out.write("<!-- //end-smooth-scrolling -->\r\n");
      out.write("<!-- smooth-scrolling-of-move-up -->\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("    $(document).ready(function () {\r\n");
      out.write("\r\n");
      out.write("        var defaults = {\r\n");
      out.write("            containerID: 'toTop', // fading element id\r\n");
      out.write("            containerHoverID: 'toTopHover', // fading element hover id\r\n");
      out.write("            scrollSpeed: 1200,\r\n");
      out.write("            easingType: 'linear'\r\n");
      out.write("        };\r\n");
      out.write("\r\n");
      out.write("        $().UItoTop({easingType: 'easeOutQuart'});\r\n");
      out.write("\r\n");
      out.write("    });\r\n");
      out.write("</script>\r\n");
      out.write("<!-- //smooth-scrolling-of-move-up -->\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <!-- header -->\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<div class=\"header\">\r\n");
      out.write("    \r\n");
      out.write("    <div class=\"w3ls-header\"><!--header-one--> \r\n");
      out.write("        <div class=\"w3ls-header-left\">\r\n");
      out.write("            <p><a href=\"#\">Giảm giá 10% cho tất cả các dòng LAPTOP. Sử dụng mã: Dx2T </a></p>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"w3ls-header-right\">\r\n");
      out.write("            <ul>\r\n");
      out.write("                <li class=\"dropdown head-dpdn\">\r\n");
      out.write("                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\"><i class=\"fa fa-user\" aria-hidden=\"true\"></i> Tài Khoản<span class=\"caret\"></span></a>\r\n");
      out.write("                    <ul class=\"dropdown-menu\">\r\n");
      out.write("                        ");

                            if (session.getAttribute("IdUser") == null) {
                        
      out.write("\r\n");
      out.write("                            <li><a href=\"dangnhap.jsp\">Đăng Nhập</a></li>\r\n");
      out.write("                            <li><a href=\"dangky.jsp\">Đăng Ký</a></li>\r\n");
      out.write("                            <li><a href=\"#\">Kiểm Tra Đơn Hàng</a></li>\r\n");
      out.write("                        ");

            } else {
                            UserService us = new UserService();
                            Users user = us.GetUsersByID(session.getAttribute("IdUser").toString());
                        
      out.write("          \r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                        <li><a href=\"#\">Wellcome: ");
      out.print( user.getFullName() );
      out.write("</a></li>\r\n");
      out.write("                        <li><a href=\"exit.jsp\"> Logout</a></li>\r\n");
      out.write("                ");

                    }
                
      out.write("\r\n");
      out.write("                    </ul> \r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"dropdown head-dpdn\">\r\n");
      out.write("                    <a href=\"tintuc.jsp\" class=\"dropdown-toggle\"><i class=\"fa fa-gift\" aria-hidden=\"true\"></i> Tin Tức</a> \r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"dropdown head-dpdn\">\r\n");
      out.write("                    <a href=\"#\" class=\"dropdown-toggle\"><i class=\"fa fa-info-circle\" aria-hidden=\"true\"></i> Giới Thiệu</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"dropdown head-dpdn\">\r\n");
      out.write("                    <a href=\"#\" class=\"dropdown-toggle\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i> Liên Hệ</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"dropdown head-dpdn\">\r\n");
      out.write("                    <a href=\"#\" class=\"dropdown-toggle\"><i class=\"fa fa-question-circle\" aria-hidden=\"true\"></i> Trợ Giúp</a>\r\n");
      out.write("                </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"clearfix\"> </div> \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container-fluid banber-custom\"><!-- header-two -->\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-md-2 text-center logo-custom\">\r\n");
      out.write("                    <div class=\"header-logo\">\r\n");
      out.write("                        <h1><a href=\"index.jsp\"><span>F</span>Dx2T <i>FPT</i></a></h1>\r\n");
      out.write("                        <h6>FPT Polytechnic Tây Nguyên</h6> \r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <br>\r\n");
      out.write("                <div class=\"col-md-5\">\r\n");
      out.write("                    <form class=\"form-custom\" action=\"timkiemsanpham.jsp\" method=\"get\">\r\n");
      out.write("                        <div class=\"input-group\">\r\n");
      out.write("                            <input name=\"timkiemsp\"id=\"msg\" type=\"text\" class=\"form-control\" placeholder=\"Tìm sản phẩm...\">\r\n");
      out.write("                            <span class=\"input-group-addon\" style=\"border: 1px solid #F57170;\">\r\n");
      out.write("                                <li class=\"dropdown\">\r\n");
      out.write("                                    <a style=\"color: black;\" href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">\r\n");
      out.write("                                        Tất Cả Danh Mục <b class=\"caret\"></b>\r\n");
      out.write("                                    </a>\r\n");
      out.write("                                    <ul class=\"dropdown-menu\" style=\"top: 29px; left: -14px; width: 175px;\">\r\n");
      out.write("                                        <li><a href=\"#\">Tất Cả Danh Mục</a></li>\r\n");
      out.write("                                        <li><a href=\"#\">Máy Tính</a></li>\r\n");
      out.write("                                        <li><a href=\"#\">Điện Thoại</a></li>\r\n");
      out.write("                                        <li><a href=\"#\">Quà Lưu Niệm</a></li>\r\n");
      out.write("                                        <li><a href=\"#\">Nhà Cửa Đồ Gia Dụng</a></li>\r\n");
      out.write("                                        <li><a href=\"#\">Dụng Cụ Thể Thao</a></li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </li>\r\n");
      out.write("                            </span>\r\n");
      out.write("                            <div class=\"input-group-btn\">\r\n");
      out.write("                                <button class=\"btn btn-danger\" type=\"submit\">\r\n");
      out.write("                                    <i class=\"glyphicon glyphicon-search\"></i>\r\n");
      out.write("                                </button>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>  \r\n");
      out.write("                          \r\n");
      out.write("                <div class=\"col-md-4 text-right\">\r\n");
      out.write("                     <div class=\"header-cart\">\r\n");
      out.write("                        <div class=\"cart\"> \r\n");
      out.write("                            \r\n");
      out.write("                                <button type=\"submit\" name=\"submit\" value=\"\" style=\"border: none; background-color: transparent;outline: none;\">  \r\n");
      out.write("                                    <a href=\"showcart.jsp\">\r\n");
      out.write("                                        GIỎ HÀNG<img src=\"images/80-shopping-cart-icon.png\" alt=\"\"/>\r\n");
      out.write("                                        ");

                                            if (session.getAttribute("dshang") != null) {
                                                 ArrayList<GioHang> listGioHang = (ArrayList) session.getAttribute("dshang");
                                            
                                        
      out.write("\r\n");
      out.write("                                        \r\n");
      out.write("                                        <span class=\"badge\">");
      out.print( listGioHang.size() );
      out.write("</span>\r\n");
      out.write("                                        ");

                                            }
                                        
      out.write("\r\n");
      out.write("                                    <a/>\r\n");
      out.write("                                </button>\r\n");
      out.write("                                </a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div> \r\n");
      out.write("                </div>   \r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"clearfix\"> </div>\t\t\r\n");
      out.write("    </div><!-- //header-two -->\r\n");
      out.write("    <div class=\"header-three\"><!-- header-three -->\r\n");
      out.write("        <div class=\"container-fluid\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-md-12\">\r\n");
      out.write("                    ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");

    LoaisanphamService loaisanphamService = new LoaisanphamService();
    ArrayList<Loaisanpham> ListMenuCha = null;
    ArrayList<Loaisanpham> LisMenucon = null;
    ListMenuCha=loaisanphamService.GetAllLoaisanpham(0);
    

      out.write("\r\n");
      out.write("<div class=\"menu\">\r\n");
      out.write("    <div class=\"cd-dropdown-wrapper\">\r\n");
      out.write("        <a style=\"color: #fff; text-transform: uppercase\" class=\"cd-dropdown-trigger\" href=\"#\"><i class=\"fa fa-bars\" ></i> Danh Mục Sản Phẩm</a>\r\n");
      out.write("        <nav class=\"cd-dropdown\"> \r\n");
      out.write("            <a href=\"#\" class=\"cd-close\">Close</a>\r\n");
      out.write("            <ul class=\"cd-dropdown-content\">\r\n");
      out.write("                ");

                    //Bắt đầu vòng lặp
                            for(int i=0;i<ListMenuCha.size();i++){
                                Loaisanpham MenuCha = ListMenuCha.get(i);
                                LisMenucon=loaisanphamService.GetAllLoaisanpham(MenuCha.getIdLoaiSanPham());
                
      out.write("\r\n");
      out.write("                <li class=\"has-children\">\r\n");
      out.write("                    <a href=\"#\">");
      out.print( MenuCha.getTenLoaiSanPham() );
      out.write("</a>\r\n");
      out.write("                    <ul class=\"cd-secondary-dropdown is-hidden\">\r\n");
      out.write("                        <li class=\"go-back\"><a href=\"#\">Menu</a></li>\r\n");
      out.write("                        <li class=\"has-children\">\r\n");
      out.write("                            <a href=\"#\">");
      out.print( MenuCha.getTenLoaiSanPham() );
      out.write("</a>\r\n");
      out.write("                            <ul class=\"is-hidden\">\r\n");
      out.write("                                \r\n");
      out.write("                                ");

                                    //Bắt đầu vòng lặp
                                     for(int a=0;a<LisMenucon.size();a++){
                                     Loaisanpham Menucon = LisMenucon.get(a);
                                
                                     
                                
      out.write("\r\n");
      out.write("                                <li><a href=\"sanpham.jsp?id=");
      out.print( Menucon.getIdLoaiSanPham() );
      out.write("\"> <span style=\"color: #F57170; padding-right: 5px\" class=\"glyphicon glyphicon-arrow-right\"></span> ");
      out.print( Menucon.getTenLoaiSanPham() );
      out.write("</a></li>\r\n");
      out.write("                                ");

                                    }
                                
      out.write("\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </li> \r\n");
      out.write("                    </ul><!-- .cd-secondary-dropdown --> \r\n");
      out.write("                </li>\r\n");
      out.write("                ");

                    }
                
      out.write("\r\n");
      out.write("            </ul> <!-- .cd-dropdown-content -->\r\n");
      out.write("        </nav> <!-- .cd-dropdown -->\r\n");
      out.write("    </div> <!-- .cd-dropdown-wrapper -->\t \r\n");
      out.write("</div>");
      out.write("\r\n");
      out.write("                    <div class=\"move-text\">\r\n");
      out.write("                        <div class=\"marquee\"><a href=\"#\"> Trần Phước Danh \r\n");
      out.write("                                <img src=\"images/Animals-Dog-icon.png\" width=\"20px\" height=\"20px\" alt=\"\"/>\r\n");
      out.write("                                <span>Nguyễn Chí Tuấn </span> \r\n");
      out.write("                                <span> Lê Hữu Tạo</span>\r\n");
      out.write("                            </a></div>\r\n");
      out.write("                        <script type=\"text/javascript\" src=\"js/jquery.marquee.min.js\"></script>\r\n");
      out.write("                        <script>\r\n");
      out.write("                            $('.marquee').marquee({pauseOnHover: true});\r\n");
      out.write("                            //@ sourceURL=pen.js\r\n");
      out.write("                        </script>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>");
      out.write("\r\n");
      out.write("        <!-- //header --> \t\r\n");
      out.write("        <!-- login-page -->\r\n");
      out.write("        <div class=\"login-page\">\r\n");
      out.write("            <div class=\"container\"> \r\n");
      out.write("                  \r\n");
      out.write("                <div class=\"login-body\">\r\n");
      out.write("                    <form action=\"LoginServlet\" method=\"post\">\r\n");
      out.write("                        <h4>Đăng Nhập</h4>\r\n");
      out.write("                        <hr style=\"border: 1px dashed tomato;\">\r\n");
      out.write("                        <div class=\"input-group\">\r\n");
      out.write("                            <span class=\"input-group-addon\">Tài khoản</span>\r\n");
      out.write("                            <input type=\"text\" class=\"user form-control\"  name=\"Email\" placeholder=\"Sử dụng tài khoản hoặc Email để đăng nhập\" required=\"\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <div class=\"input-group\">\r\n");
      out.write("                            <span class=\"input-group-addon\">Mật khẩu</span>\r\n");
      out.write("                            <input type=\"password\" class=\"user form-control\" name=\"Password\" required=\"\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <input type=\"submit\" value=\"Đăng Nhập\">\r\n");
      out.write("                        <div class=\"forgot-grid\">\r\n");
      out.write("                            <label class=\"checkbox\"><input type=\"checkbox\" name=\"checkbox\"><i></i>Nhớ thông tin đăng nhập</label>\r\n");
      out.write("                            <div class=\"forgot\">\r\n");
      out.write("                                <a href=\"#\">Quên mật khẩu?</a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"clearfix\"> </div>\r\n");
      out.write("                            <h6> Chưa có tài khoản? <a href=\"dangky.jsp\">Đăng ký ngay!</a> </h6> \r\n");
      out.write("                            <div class=\"login-page-bottom social-icons\">\r\n");
      out.write("                                <h6>Hoặc, Đăng nhập bằng </h6>\r\n");
      out.write("                                <ul>\r\n");
      out.write("                                    <li><a href=\"#\" class=\"fa fa-facebook icon facebook\"> </a></li>\r\n");
      out.write("                                    <li><a href=\"#\" class=\"fa fa-google-plus icon googleplus\"> </a></li>\r\n");
      out.write("                                </ul> \r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>  \r\n");
      out.write("                \r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- //login-page --> \r\n");
      out.write("        <!-- footer-top -->\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<div class=\"w3agile-ftr-top\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div class=\"ftr-toprow\">\r\n");
      out.write("            <div class=\"col-md-4 ftr-top-grids\">\r\n");
      out.write("                <div class=\"ftr-top-left\">\r\n");
      out.write("                    <i class=\"fa fa-truck\" aria-hidden=\"true\"></i>\r\n");
      out.write("                </div> \r\n");
      out.write("                <div class=\"ftr-top-right\">\r\n");
      out.write("                    <h4>Miễn phí vận chuyển</h4>\r\n");
      out.write("                    <p>Miễn phí vận chuyển các đơn hàng dưới 15kg</p>\r\n");
      out.write("                </div> \r\n");
      out.write("                <div class=\"clearfix\"> </div>\r\n");
      out.write("            </div> \r\n");
      out.write("            <div class=\"col-md-4 ftr-top-grids\">\r\n");
      out.write("                <div class=\"ftr-top-left\">\r\n");
      out.write("                    <i class=\"fa fa-user\" aria-hidden=\"true\"></i>\r\n");
      out.write("                </div> \r\n");
      out.write("                <div class=\"ftr-top-right\">\r\n");
      out.write("                    <h4>Chăm sóc khách hàng</h4>\r\n");
      out.write("                    <p>Liên hệ: 0976 888 222</p>\r\n");
      out.write("                </div> \r\n");
      out.write("                <div class=\"clearfix\"> </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-md-4 ftr-top-grids\">\r\n");
      out.write("                <div class=\"ftr-top-left\">\r\n");
      out.write("                    <i class=\"fa fa-thumbs-o-up\" aria-hidden=\"true\"></i>\r\n");
      out.write("                </div> \r\n");
      out.write("                <div class=\"ftr-top-right\">\r\n");
      out.write("                    <h4>Chất lượng tốt</h4>\r\n");
      out.write("                    <p>Cam kết với khách hàng</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"clearfix\"> </div>\r\n");
      out.write("            </div> \r\n");
      out.write("            <div class=\"clearfix\"> </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>");
      out.write("\r\n");
      out.write("        <!-- //footer-top --> \r\n");
      out.write("        <!-- subscribe -->\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<div class=\"subscribe\"> \r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div class=\"col-md-6 social-icons w3-agile-icons\">\r\n");
      out.write("            <h4>Liên hệ với chúng tôi</h4>  \r\n");
      out.write("            <ul>\r\n");
      out.write("                <li><a href=\"#\" class=\"fa fa-facebook icon facebook\"> </a></li>\r\n");
      out.write("                <li><a href=\"#\" class=\"fa fa-twitter icon twitter\"> </a></li>\r\n");
      out.write("                <li><a href=\"#\" class=\"fa fa-google-plus icon googleplus\"> </a></li>\r\n");
      out.write("                <li><a href=\"#\" class=\"fa fa-dribbble icon dribbble\"> </a></li>\r\n");
      out.write("                <li><a href=\"#\" class=\"fa fa-rss icon rss\"> </a></li> \r\n");
      out.write("            </ul> \r\n");
      out.write("            <ul class=\"apps\"> \r\n");
      out.write("                <li><h4>Tải ứng dụng : </h4> </li>\r\n");
      out.write("                <li><a href=\"#\" class=\"fa fa-apple\"></a></li>\r\n");
      out.write("                <li><a href=\"#\" class=\"fa fa-windows\"></a></li>\r\n");
      out.write("                <li><a href=\"#\" class=\"fa fa-android\"></a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div> \r\n");
      out.write("        <div class=\"col-md-6 subscribe-right\">\r\n");
      out.write("            <h4>Đăng ký nhận thông tin khuyến mãi qua Email!</h4>  \r\n");
      out.write("            <form action=\"#\" method=\"post\"> \r\n");
      out.write("                <input type=\"text\" name=\"email\" placeholder=\"Nhập địa chỉ email...\" required=\"\">\r\n");
      out.write("                <input type=\"submit\" value=\"Gửi\">\r\n");
      out.write("            </form>\r\n");
      out.write("            <div class=\"clearfix\"> </div> \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"clearfix\"> </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("        <!-- //subscribe --> \r\n");
      out.write("        <!-- footer -->\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<div class=\"footer\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div class=\"footer-info w3-agileits-info\">\r\n");
      out.write("            <div class=\"col-md-4 address-left agileinfo\">\r\n");
      out.write("                <div class=\"footer-logo header-logo\">\r\n");
      out.write("                    <h2><a href=\"index.jsp\"><span>F</span>Dx2T <i>FPT</i></a></h2>\r\n");
      out.write("                    <h6>FPT Polytechnic Tây Nguyên</h6>\r\n");
      out.write("                </div>\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li><i class=\"fa fa-map-marker\"></i> 27 Nguyễn Tất Thành - TP. Buôn Ma Thuột - DakLak</li>\r\n");
      out.write("                    <li><i class=\"fa fa-mobile\"></i> 0976 888 222 </li>\r\n");
      out.write("                    <li><i class=\"fa fa-phone\"></i> (0500) 3555678 </li>\r\n");
      out.write("                    <li><i class=\"fa fa-envelope-o\"></i> <a href=\"mailto:example@mail.com\"> caodangfpt.daklak@fpt.edu.vn</a></li>\r\n");
      out.write("                </ul> \r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-md-8 address-right\">\r\n");
      out.write("                <div class=\"col-md-4 footer-grids\">\r\n");
      out.write("                    <h3>Công Ty</h3>\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li><a href=\"#\">Về chúng tôi</a></li>\r\n");
      out.write("                        <li><a href=\"#\">Tư Vấn</a></li>  \r\n");
      out.write("                        <li><a href=\"#\">Tin Tức</a></li>  \r\n");
      out.write("                        <li><a href=\"#\">Khuyến Mãi</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-md-4 footer-grids\">\r\n");
      out.write("                    <h3>Dịch Vụ</h3>\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li><a href=\"#\">Về chúng tôi</a></li>\r\n");
      out.write("                        <li><a href=\"#\">Tình Trạng Đơn Hàng</a></li>\r\n");
      out.write("                        <li><a href=\"#\">FAQ</a></li>\r\n");
      out.write("                    </ul> \r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-md-4 footer-grids\">\r\n");
      out.write("                    <h3>Payment Methods</h3>\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li><i class=\"fa fa-laptop\" aria-hidden=\"true\"></i> Net Banking</li>\r\n");
      out.write("                        <li><i class=\"fa fa-money\" aria-hidden=\"true\"></i> Cash On Delivery</li>\r\n");
      out.write("                        <li><i class=\"fa fa-pie-chart\" aria-hidden=\"true\"></i>EMI Conversion</li>\r\n");
      out.write("                        <li><i class=\"fa fa-gift\" aria-hidden=\"true\"></i> E-Gift Voucher</li>\r\n");
      out.write("                        <li><i class=\"fa fa-credit-card\" aria-hidden=\"true\"></i> Debit/Credit Card</li>\r\n");
      out.write("                    </ul>  \r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"clearfix\"></div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"clearfix\"></div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"copy-right\"> \r\n");
      out.write("    <div class=\"container-fluid\">\r\n");
      out.write("        <p>© 2016 DTT . All rights reserved | Design by <a href=\"#\"> Dx2T Team...</a></p>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>");
      out.write("\r\n");
      out.write("        <!-- cart-js -->\r\n");
      out.write("        <script src=\"js/minicart.js\"></script>\r\n");
      out.write("        <script>\r\n");
      out.write("            w3ls.render();\r\n");
      out.write("\r\n");
      out.write("            w3ls.cart.on('w3sb_checkout', function (evt) {\r\n");
      out.write("                var items, len, i;\r\n");
      out.write("\r\n");
      out.write("                if (this.subtotal() > 0) {\r\n");
      out.write("                    items = this.items();\r\n");
      out.write("\r\n");
      out.write("                    for (i = 0, len = items.length; i < len; i++) {\r\n");
      out.write("                        items[i].set('shipping', 0);\r\n");
      out.write("                        items[i].set('shipping2', 0);\r\n");
      out.write("                    }\r\n");
      out.write("                }\r\n");
      out.write("            });\r\n");
      out.write("        </script>  \r\n");
      out.write("        <!-- //cart-js --> \t \r\n");
      out.write("        <!-- menu js aim -->\r\n");
      out.write("        <script src=\"js/jquery.menu-aim.js\"></script>\r\n");
      out.write("        <script src=\"js/main.js\"></script> <!-- Resource jQuery -->\r\n");
      out.write("        <!-- //menu js aim --> \r\n");
      out.write("        <!-- Bootstrap core JavaScript\r\n");
      out.write("    ================================================== -->\r\n");
      out.write("        <!-- Placed at the end of the document so the pages load faster -->\r\n");
      out.write("        <script src=\"js/bootstrap.js\"></script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
