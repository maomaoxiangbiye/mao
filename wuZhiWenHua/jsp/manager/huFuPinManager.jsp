<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">  
    <title>订单管理</title>
    <link rel="STYLESHEET" type="text/css" href="<%=basePath%>css/page/distributionChartsMain.css"/>
  </head>
  
  <body>
	<div class="col-xs-12">
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
	   			<div class="floatRight">
	   				<button type="button" class="btn btn-success btn-sm" onclick="onAdd()">
   						添加
   						<i class="icon-ok icon-on-right"></i>
   					</button>
   					<button type="button" class="btn btn-danger btn-sm" onclick="onDelete()">
   						删除
   						<i class="icon-remove icon-on-right"></i>
   					</button>	
   				</div>
   			</div>
   		</div>
   </div>
   <div class="col-xs-12 progressRate colorSet">
		<div id="gridPreDiv"  class="space-6"></div>
		<table id="gridBox"></table>
<!--		<div id="gridBoxPage"></div>-->
   </div>

    <script type="text/javascript" src="js/manager/huFuPinManager.js"></script>    
    <script type="text/javascript" src="js/util/modal-util.js"></script>
  </body>
</html>
