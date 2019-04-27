<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'mainPage.jsp' starting page</title>

  </head>
  
  <body>
    <video style="width:100%;height:100%" controls autoplay>
	  <source src="veido/1.mp4" type="video/mp4">
	  <source src="veido/1.ogg" type="video/ogg">
	  <source src="veido/1.webm" type="video/webm">
<!--	  <object data="1.mp4">-->
<!--	    <embed style="width:100%;height:100%" src="1.mp4">-->
<!--	  </object>-->
	</video>
  </body>
</html>
