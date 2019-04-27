<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'huFuPinOrderPage.jsp' starting page</title>
    <link rel="STYLESHEET" type="text/css" href="<%=basePath%>css/page/distributionChartsMain.css"/> 
  </head>
  
  <body>
   <div class="col-xs-12 progressRate colorSet">
		<div id="gridPreDiv"  class="space-6"></div>
		<table id="gridBox"></table>
<!--		<div id="gridBoxPage"></div>-->
   </div>

    <script type="text/javascript" src="js/user/huFuPinOrderPage.js"></script>    
    <script type="text/javascript" src="js/util/modal-util.js"></script>    
  </body>
</html>
