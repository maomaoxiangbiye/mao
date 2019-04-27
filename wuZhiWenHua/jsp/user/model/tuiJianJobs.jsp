<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>tuiJianJobs.jsp</title>
	
  </head>
  
  <body>
 	   <div class="col-xs-12 progressRate colorSet">
			<div id="gridPreDiv1"  class="space-6"></div>
			<table id="gridBox1"></table>
			<div id="gridBoxPage1"></div>
	   </div>
	   <script type="text/javascript" src="js/user/model/tuiJianJobs.js"></script>  
  </body>
</html>
