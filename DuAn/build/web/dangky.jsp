<%-- 
    Document   : dangky
    Created on : Nov 23, 2016, 4:10:40 PM
    Author     : Nguyễn Chí Tuấn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng Ký</title>
        <%@include file="includes/headtag.jsp" %>
    </head>
    <body>
        <!-- header -->
        <%@include file="includes/header.jsp" %>
        <!-- //header --> 	
        <!-- sign up-page -->

        <div class="container dangky-custom" style="margin-top: 10px;">
            <div class="row">
                <div class="col-md-6">

                </div>
                <div class="col-md-6">
                    <form class="well form-horizontal" action="RegisterServlet" method="post"  id="contact_form"  style="background-color: #F7F0E9">
                        <h3 class="text-center">Đăng Ký</h3>
                        <hr style="border: 0.5px dashed tomato">
                        <div class="form-group">
                            <label class="col-md-3 control-label">FullName</label>  
                            <div class="col-md-8 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input  name="FullName" placeholder="Nhập đầy đủ họ và tên" class="form-control"  type="text">
                                </div>
                            </div>
                        </div>
                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-3 control-label">E-Mail</label>  
                            <div class="col-md-8 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                    <input name="Email" placeholder="examp@examp.com" class="form-control"  type="text">
                                </div>
                            </div>
                        </div>
                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-3 control-label" >Tên đăng nhập</label> 
                            <div class="col-md-8 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input name="UserName" placeholder="Nhập tên đăng nhập" class="form-control"  type="text">
                                </div>
                            </div>
                        </div>
                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-3 control-label" >Mật khẩu</label> 
                            <div class="col-md-8 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input name="Password" placeholder="Nhập mật khẩu" class="form-control"  type="password">
                                </div>
                            </div>
                        </div>
                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-3 control-label" >Nhập lại mật khẩu</label> 
                            <div class="col-md-8 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input name="Re_Password" placeholder="Nhập lại mật khẩu" class="form-control"  type="password">
                                </div>
                            </div>
                        </div> 
                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-3 control-label">Địa Chỉ</label>  
                            <div class="col-md-8 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                    <input name="DiaChi" placeholder="Nhập địa chỉ" class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-3 control-label">SĐT</label>  
                            <div class="col-md-8 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                    <input name="phone" class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                        <!-- Select Basic -->
                        <div class="form-group"> 
                            <label class="col-md-3 control-label">Giới Tính</label>
                            <div class="col-md-8 selectContainer">
                                <div class="input-group">
                                    <select name="gioitinh" class="form-control selectpicker" >
                                        <option>Nam</option>
                                        <option>Nữ</option>
                                        <option >Không Xác Định</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- Button -->
                        <label style="min-height: 0px;" class="checkbox"><input type="checkbox" name="checkbox"><i></i>
                            Tôi đã đọc và đồng ý theo <a href="#">điều khoản sử dụng.</a>
                        </label>
                        <br>
                        <input style="display: none;" name="quyen" value="3" />
                        <div class="form-group text-center">
                            <div>
                                <button type="submit" class="btn btn-danger" >Đăng Ký <span class="glyphicon glyphicon-send"></span></button>
                            </div>
                        </div>
                        <!-- End -->
                        <div>
                            <div class="clearfix"> </div>
                            <hr style="border: 1px dashed tomato;">
                            <p>Bạn đã có tài khoản? <a href="dangnhap.jsp">Đăng nhập ngay!</a> </p> 
                        </div>
                    </form>
                </div>
                
            </div>
            
        </div>
    </div><!-- /.container -->
    <script src="js/jquery-2.2.3.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.js" type="text/javascript"></script>
    <script src="js/bootstrapvalidator.min.js" type="text/javascript"></script>
    <script src="js/index.js"></script>
        
        <!-- //sign up-page --> 
        <!-- footer-top -->
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
