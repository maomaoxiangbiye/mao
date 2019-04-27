<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link href="css/style.css" rel="stylesheet">

    
	<style>
		*{margin:0;padding:0;}
		h1{text-align:center;font-weight:normal;font-size:26px;margin-top:40px;}
		#container{width:1200px;height:auto;overflow:hidden;margin:20px auto;}
		#container>div{float:left;width:1200px;}
	</style>
  	<script type="text/javascript">
  		var basePath='<%=basePath%>';
  		var userName = '<%=request.getParameter("userName")%>';
  	</script>	
	<script type="text/javascript" src="<%=basePath%>js/util/jquery-2.0.3.min.js"></script>		
	<script>
		$(function(){
			if(userName != 'null'){
				$("#loginA").text(userName);
			}
		});
	</script>  
  </head>
  
	<body style="background-image: url(images/lantian.jpg);background-size:100% 100%;">
		<span style="width: 100%;height:50px;">
			
				<a href="jsp/loginRegister/loginRegister.jsp" id="loginA"  class="btn-projects scrollto" style="float: right">登录</a>
				<a href="jsp/loginRegister/loginRegister.jsp"  class="btn-projects scrollto" style="float: right">注册|</a>				
							
		</span>
	    <div id="container">
	    	<div></div>
	    </div>
	<script src="js/map/jquery-3.3.1.min.js"></script>
	<script src="js/map/jsMap-1.1.1.min.js"></script>
	<script>
		jsMap.config("#container > div:eq(0)", {
		    name: "china",
		    width: 1200,
		    height: 500,
		    areaName: true
		}); 
	</script> 	    
	</body>
</html>
