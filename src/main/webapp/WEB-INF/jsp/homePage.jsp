<%@page import="edu.tfswufe.entity.Employee" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Home</title>

    <!-- Favicon  -->
    <link rel="icon" href="<%=path%>/extra/img/core-img/favicon.ico">

    <!-- Style CSS -->
    <link rel="stylesheet" href="<%=path%>/extra/style.css">

</head>

<body>
<!-- Preloader -->
<div id="preloader">
    <div class="medilife-load"></div>
</div>

<!-- ***** Header Area Start ***** -->
<header class="header-area">
    <!-- Top Header Area -->
    <div class="top-header-area">
        <div class="container h-100">
            <div class="row h-100">
                <div class="col-12 h-100">
                    <div class="h-100 d-md-flex justify-content-between align-items-center">
                        <p>欢迎来到<span>天府医院</span>人事管理系统</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Main Header Area -->
    <div class="main-header-area" id="stickyHeader">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12 h-100">
                    <div class="main-menu h-100">
                        <nav class="navbar h-100 navbar-expand-lg">
                            <!-- Logo Area  -->
                            <div class="col-md-10 column">
                                <img src="<%=path%>/extra/img/core-img/logo.png" alt="Logo">
                            </div>
                            <div class="col-md-2 column">
                                <a href="<%=path %>/employee/checkLogin.do" class="btn medilife-appoint-btn ml-30"
                                   style="margin-right: 10px;">点击<span>登陆</span></a>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- ***** Header Area End ***** -->

<!-- ***** Hero Area Start ***** -->
<section class="hero-area">
    <div class="hero-slides owl-carousel">
        <!-- Single Hero Slide -->
        <div class="single-hero-slide bg-img bg-overlay-white" style="background-image: url(<%=path%>/extra/img/bg-img/hero1.jpg);">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <div class="hero-slides-content">
                            <h2 data-animation="fadeInUp" data-delay="100ms">提供科学化、信息化管理</h2>
                            <h6 data-animation="fadeInUp" data-delay="400ms">建立人事管理系统的最终目标是为管理部门提供
                                一个涵盖各项人事管理活动的科学管理渠道。</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Single Hero Slide -->
        <div class="single-hero-slide bg-img bg-overlay-white"
             style="background-image: url(<%=path%>/extra/img/bg-img/breadcumb3.jpg);">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <div class="hero-slides-content">
                            <h2 data-animation="fadeInUp" data-delay="100ms">提供科学化、信息化管理</h2>
                            <h6 data-animation="fadeInUp" data-delay="400ms">建立人事管理系统的最终目标是为管理部门提供
                                一个涵盖各项人事管理活动的科学管理渠道。</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Single Hero Slide -->
        <div class="single-hero-slide bg-img bg-overlay-white"
             style="background-image: url(<%=path%>/extra/img/bg-img/breadcumb2.jpg);">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <div class="hero-slides-content">
                            <h2 data-animation="fadeInUp" data-delay="100ms">提供科学化、信息化管理</h2>
                            <h6 data-animation="fadeInUp" data-delay="400ms">建立人事管理系统的最终目标是为管理部门提供
                                一个涵盖各项人事管理活动的科学管理渠道。</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Hero Area End ***** -->


<!-- ***** Footer Area Start ***** -->
<footer class="footer-area section-padding-50">
    <!-- Main Footer Area -->
    <!-- Bottom Footer Area -->
    <div class="bottom-footer-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="bottom-footer-content">
                        <!-- Copywrite Text -->
                        <div class="copywrite-text" style="font-size: small;" align="center">
                            <p>Copyright &copy; 2021 天府医院.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- ***** Footer Area End ***** -->

<!-- jQuery (Necessary for All JavaScript Plugins) -->
<script src="<%=path%>/extra/js/jquery/jquery-2.2.4.min.js"></script>
<!-- Popper js -->
<script src="<%=path%>/extra/js/popper.min.js"></script>
<!-- Bootstrap js -->
<script src="<%=path%>/extra/js/bootstrap.min.js"></script>
<!-- Plugins js -->
<script src="<%=path%>/extra/js/plugins.js"></script>
<!-- Active js -->
<script src="<%=path%>/extra/js/active.js"></script>

</body>

</html>
