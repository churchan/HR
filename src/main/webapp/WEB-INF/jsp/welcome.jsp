<%@page import="edu.tfswufe.entity.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.*" %>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="shortcut icon" href="<%=path%>/extra/img/core-img/favicon.ico">
    <link href="<%=path%>/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="<%=path %>/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path %>/css/animate.css" rel="stylesheet">
    <link href="<%=path %>/css/style.css?v=4.1.0" rel="stylesheet">


    <!--医疗主题Favicon  -->
    <link rel="icon" href="<%=path%>/extra/img/core-img/favicon.ico">

    <!--医疗主题按钮自添加 Start-->
    <style type="text/css">
        .medilife-btn {
            display: inline-block;
            color: #ffffff;
            background-color: #006cff;
            height: 45px;
            padding: 0 55px 0 30px;
            line-height: 42px;
            font-size: 14px;
            min-width: 140px;
            border-radius: 0;
            font-weight: 700;
            position: relative;
            z-index: 1;
            -webkit-transition-duration: 500ms;
            transition-duration: 500ms; }
        .medilife-btn span {
            width: 40px;
            height: 45px;
            background-color: #081f3e;
            display: inline-block;
            position: absolute;
            top: -1px;
            right: -1px;
            font-size: 24px;
            color: #ffffff;
            font-weight: 500;
            -webkit-transition-duration: 500ms;
            transition-duration: 500ms; }
        .medilife-btn:hover, .medilife-btn:focus {
            background-color: #081f3e;
            color: #ffffff; }
        .medilife-btn:hover span, .medilife-btn:focus span {
            color: #ffffff;
            background-color: #006cff; }
        .medilife-btn.btn-2 {
            background-color: #081f3e;
            color: #ffffff; }
        .medilife-btn.btn-2 span {
            color: #ffffff;
            background-color: #006cff; }
        .medilife-btn.btn-2:hover, .medilife-btn.btn-2:focus {
            background-color: #006cff;
            color: #ffffff; }
        .medilife-btn.btn-2:hover span, .medilife-btn.btn-2:focus span {
            color: #ffffff;
            background-color: #081f3e; }
        .medilife-btn.btn-3 {
            background-color: #ffffff;
            color: #081f3e;
            border: 2px solid;
            border-color: #006cff; }
        .medilife-btn.btn-3 span {
            top: -2px;
            right: -2px; }
        .medilife-btn.btn-4 {
            background-color: #ffffff;
            color: #081f3e;
            border: 2px solid;
            border-color: #006cff; }
        .medilife-btn.btn-4 span {
            background-color: #006cff;
            top: -2px;
            right: -2px; }
    </style>
    <!--医疗主题按钮自添加 End-->



     <script>
		var myVar=setInterval(function(){myTimer()},1000);
		function myTimer(){
			var d=new Date();
			var t=d.toLocaleTimeString();
			document.getElementById("time").innerHTML=t;
		}
	</script>
</head>
<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
              <div class="jumbotron">
              	<div style="margin-left: 250px">
                    <p>&nbsp;</p>
					<%Employee employee = (Employee)session.getAttribute("loged"); %>
					<h1>你好，<%=employee.getName() %></h1>
					<p>&nbsp;</p>
					<p>欢迎登录HR医院人事管理系统</p>
					<p id="time">&nbsp;</p>
					<p>&nbsp;</p>
					<p><a href="<%=path %>/attendance/addStart.do?employeeNumber=<%=employee.getEmployeeNumber() %>"
							class="btn medilife-btn">&nbsp;上班签到&nbsp;<span style="font-size: x-small">▶</span></a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
						<a href="<%=path %>/attendance/addEnd.do?employeeNumber=<%=employee.getEmployeeNumber() %>"
							class="btn medilife-btn">&nbsp;下班签到&nbsp;<span style="font-size: x-small">❚❚</span></a>
					</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
                </div>
            </div>
            </div>
         </div>
     </div>
	<!-- 全局js -->
    <script src="<%=path%>/js/jquery.min.js?v=2.1.4"></script>
    <script src="<%=path%>/js/bootstrap.min.js?v=3.3.6"></script>

    <!-- 自定义js -->
    <script src="<%=path%>/js/content.js?v=1.0.0"></script>

    <!-- layer javascript -->
    <script src="js/plugins/layer/layer.min.js"></script>
   	<script>
   	$("a").click(function () {
        var date = new Date();
        var time = date.getHours();
        if(time > 22){
            parent.layer.alert('签到时间已过，请明日再签！');
        }else if(time < 8){
            parent.layer.alert('上班时间未到，请稍后签到！');
        }else{
            parent.layer.alert('签到成功！');
        }
	});
   	</script>
</body>
</html>
