<%-- 
    Document   : banner
    Created on : Nov 23, 2016, 4:40:33 PM
    Author     : Nguyễn Chí Tuấn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="banner">
    <div id="kb" class="carousel kb_elastic animate_text kb_wrapper" data-ride="carousel" data-interval="6000" data-pause="hover">
        <!-- Wrapper-for-Slides -->
        <div class="carousel-inner" role="listbox">  
            <div class="item active"><!-- First-Slide -->
                <img src="images/5.jpg" alt="" class="img-responsive" />
                <div class="carousel-caption kb_caption kb_caption_right">
                    <h3 data-animation="animated flipInX">Giảm Giá <span>50%</span></h3>
                    <h3 data-animation="animated flipInX">Chỉ Phục Vụ Hôm Nay</h3>
                </div>
            </div>  
            <div class="item"> <!-- Second-Slide -->
                <img src="images/8.jpg" alt="" class="img-responsive" />
                <div class="carousel-caption kb_caption kb_caption_right">
                    <h3 data-animation="animated fadeInDown">Thời Trang Mới Nhất</h3>
                </div>
            </div> 
            <div class="item"><!-- Third-Slide -->
                <img src="images/3.jpg" alt="" class="img-responsive"/>
                <div class="carousel-caption kb_caption kb_caption_center">
                    <h3 data-animation="animated fadeInLeft">Xả Hàng Cuối Mùa</h3>
<!--                    <h4 data-animation="animated flipInX">cupidatat non proident</h4>-->
                </div>
            </div> 
        </div> 
        <!-- Left-Button -->
        <a class="left carousel-control kb_control_left" href="#kb" role="button" data-slide="prev">
            <span class="fa fa-angle-left kb_icons" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a> 
        <!-- Right-Button -->
        <a class="right carousel-control kb_control_right" href="#kb" role="button" data-slide="next">
            <span class="fa fa-angle-right kb_icons" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a> 
    </div>
    <script src="js/custom.js"></script>
</div>
