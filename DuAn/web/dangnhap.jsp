<%-- 
    Document   : dangnhap
    Created on : Nov 23, 2016, 4:15:19 PM
    Author     : Nguyễn Chí Tuấn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng Nhập</title>
        <%@include file="includes/headtag-dangkydangnhap.jsp" %>
    </head>
    <body>
        <!-- header -->
        <%@include file="includes/header.jsp" %>
        <!-- //header --> 	
        <!-- login-page -->
        <div class="login-page">
            <div class="container"> 
                  
                <div class="login-body">
                    <form action="LoginServlet" method="post">
                        <h4>Đăng Nhập</h4>
                        <hr style="border: 1px dashed tomato;">
                        <div class="input-group">
                            <span class="input-group-addon">Tài khoản</span>
                            <input type="text" class="user form-control"  name="Email" placeholder="Sử dụng tài khoản hoặc Email để đăng nhập" required="">
                        </div>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon">Mật khẩu</span>
                            <input type="password" class="user form-control" name="Password" required="">
                        </div>
                        <br>
                        <input type="submit" value="Đăng Nhập">
                        <div class="forgot-grid">
                            <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Nhớ thông tin đăng nhập</label>
                            <div class="forgot">
                                <a href="#">Quên mật khẩu?</a>
                            </div>
                            <div class="clearfix"> </div>
                            <h6> Chưa có tài khoản? <a href="dangky.jsp">Đăng ký ngay!</a> </h6> 
                            <div class="login-page-bottom social-icons">
                                <h6>Hoặc, Đăng nhập bằng </h6>
                                <ul>
                                    <li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
                                    <li><a href="#" class="fa fa-google-plus icon googleplus"> </a></li>
                                </ul> 
                            </div>
                        </div>
                    </form>
                </div>  
                
            </div>
        </div>
        <!-- //login-page --> 
        <!-- footer-top -->
        <%@include file="includes/footer-top.jsp" %>
        <!-- //footer-top --> 
        <!-- subscribe -->
        <%@include file="includes/subscribe.jsp" %>
        <!-- //subscribe --> 
        <!-- footer -->
        <%@include file="includes/footer.jsp" %>
        <!-- cart-js -->
        <script src="js/minicart.js"></script>
        <script>
            w3ls.render();

            w3ls.cart.on('w3sb_checkout', function (evt) {
                var items, len, i;

                if (this.subtotal() > 0) {
                    items = this.items();

                    for (i = 0, len = items.length; i < len; i++) {
                        items[i].set('shipping', 0);
                        items[i].set('shipping2', 0);
                    }
                }
            });
        </script>  
        <!-- //cart-js --> 	 
        <!-- menu js aim -->
        <script src="js/jquery.menu-aim.js"></script>
        <script src="js/main.js"></script> <!-- Resource jQuery -->
        <!-- //menu js aim --> 
        <!-- Bootstrap core JavaScript
    ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="js/bootstrap.js"></script>
    </body>
</html>
