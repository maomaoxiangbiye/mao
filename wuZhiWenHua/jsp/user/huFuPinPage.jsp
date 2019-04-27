<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'huFuPinPage.jsp' starting page</title>
	<link rel="stylesheet" href="css/animate.min.css">
	<link rel="stylesheet" href="css/templatemo-style.css">
    <link rel="STYLESHEET" type="text/css" href="<%=basePath%>css/page/distributionChartsMain.css"/> 
  </head>
  
  <body>
	<div class="col-xs-12" style="display: none">
  		<div class="space-6"></div>
   		<div class="titleBox">
   			<div class="atrContent">
   			   	<div class="col-sm-2 floatLeft">
   					<input type="text" id="orderDesc" style="height: 34px" placeholder="请输入手机名称">
	   			</div>
	   			<button type="button" class="btn btn-purple btn-sm ml10" onclick="onSearch()">
	   					搜索
	   					<i class="icon-search icon-on-right"></i>
	   			</button>
   			</div>
   		</div>
   </div>
   <div class="col-xs-12 progressRate colorSet" style="display: none">
		<div id="gridPreDiv"  class="space-6"></div>
		<table id="gridBox"></table>
		<div id="gridBoxPage"></div>
   </div>
   <div id="mainDiv" class="mainDiv" style="height:100%">
   	<div  id="divImage" style="width:100%;">
   	</div>
   </div>
    <script type="text/javascript" src="js/user/huFuPinPage.js"></script>    
    <script type="text/javascript" src="js/util/modal-util.js"></script>    
  </body>
</html>
