<%@page import="edu.hebeu.entity.Employee" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" %>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta name="description" content="">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<!-- Title  -->
		<title>Home</title>

		<!-- Favicon  -->
		<link rel="icon" href="<%=path%>/extra/img/core-img/favicon.ico">

		<!-- Style CSS -->
		<link rel="stylesheet" href="<%=path%>/extra/style.css">

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

	</head>

	<body>
		<!-- ***** Header Area End ***** -->
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
		<!-- ***** Header Area Start ***** -->
		<!-- ***** Background Area End ***** -->
		<section class="breadcumb-area bg-img gradient-background-overlay" style="background-image: url(<%=path%>/extra/img/bg-img/breadcumb2.jpg);">
		    <div class="container h-100">
		        <div class="row h-100 align-items-center">
		            <div class="col-12">
		                <div class="breadcumb-content">
		                    <h3 class="breadcumb-title">News</h3>
		                    <p>Lorem ipsum dolor sit amet, consectetuer</p>
		                </div>
		            </div>
		        </div>
		    </div>
		</section>
		<!-- ***** Background Area Start ***** -->
		<!-- ***** Login Area Start ***** -->
		<div class="medilife-book-an-appoinment-area" style="margin-bottom: 5%;">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="appointment-form-content">
							<div class="row no-gutters align-items-center">
								<div class="col-12 col-lg-9">
									<div class="medilife-appointment-form" style="margin-left:5%;">
										<form action="<%=path %>/employee/checkLogin.do" method="post">
											<div class="row align-items-end">
												<div class="col-12 col-md-5">
													<div class="form-group">
														<select class="form-control" id="speciality">
															<option>人事部主任</option>
															<option>人事部员工</option>
															<option>部门主任</option>
															<option>部门员工</option>
														</select>
													</div>
												</div>
												<div class="col-12 col-md-5">
													<div class="form-group">
														<select class="form-control" id="doctors">
															<option>主任医师</option>
															<option>副主任医师</option>
															<option>医师</option>
															<option>主任技师</option>
															<option>技师</option>
															<option>护士长</option>
															<option>护士</option>
															<option>人事部主任</option>
															<option>人事部员工</option>
														</select>
													</div>
												</div>

												<div class="col-12 col-md-5">
													<div class="form-group">
														<input type="text" class="form-control border-top-0 border-right-0 border-left-0" name="employeeNumber" id="employeeNumber"
														 placeholder="用户名">
													</div>
												</div>
												<div class="col-12 col-md-5">
													<div class="form-group">
														<input type="password" class="form-control border-top-0 border-right-0 border-left-0" name="password" id="password"
														 placeholder="密码">
													</div>
												</div>
												<div class="col-12 col-md-10 mb-0">
													<div class="form-group mb-0">
														<button type="submit" class="btn medilife-btn btn-block">登陆系统 <span>+</span></button>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="col-12 col-lg-3">
									<div class="medilife-contact-info">
										<!-- Single Contact Info -->
										<div class="single-contact-info mb-30">
											<p><img src="<%=path%>/extra/img/icons/sunrise32.png">上午上班时间<br>9：00-12：00</p>
										</div>
										<!-- Single Contact Info -->
										<div class="single-contact-info mb-30">
											<p><img src="<%=path%>/extra/img/icons/sun32.png">下午上班时间<br>15：00-18：00</p>
										</div>
										<!-- Single Contact Info -->
										<div class="single-contact-info">
											<p><img src="<%=path%>/extra/img/icons/sunset32.png">夜间加班时间<br>20：00-22：00</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- ***** Login Area End ***** -->
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



	</body>

</html>
