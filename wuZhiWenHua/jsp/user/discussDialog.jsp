<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>discussDialog.jsp</title>
    <link rel="stylesheet" href="<%=basePath%>css/common/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=basePath%>css/common/bootstrap.css" type="text/css"/>
    <link rel="stylesheet" href="<%=basePath%>css/common/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=basePath%>css/common/ace.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=basePath%>/css/common/ace-rtl.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=basePath%>css/page/main.css" type="text/css"/>
   
    <link rel="stylesheet" href="<%=basePath%>css/util/base.css" type="text/css"></link>
    <link rel="stylesheet" href="<%=basePath%>css/util/style_jqgrid.css" type="text/css"></link>
   	<link rel="stylesheet" href="<%=basePath%>assets/css/ui.jqgrid.css" type="text/css"></link>
    <link rel="stylesheet" href="<%=basePath%>css/util/modal.css" type="text/css"></link>
    
   <link rel="stylesheet" href="<%=basePath%>css/common/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=basePath%>css/common/bootstrap.css" type="text/css"/>
    <link rel="stylesheet" href="<%=basePath%>css/common/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=basePath%>css/common/ace.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=basePath%>/css/common/ace-rtl.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=basePath%>css/page/main.css" type="text/css"/>
   
    <link rel="stylesheet" href="<%=basePath%>css/util/base.css" type="text/css"></link>
    <link rel="stylesheet" href="<%=basePath%>css/util/style_jqgrid.css" type="text/css"></link>
   	<link rel="stylesheet" href="<%=basePath%>assets/css/ui.jqgrid.css" type="text/css"></link>
    <link rel="stylesheet" href="<%=basePath%>css/util/modal.css" type="text/css"></link>
    
    <!-- 日期插件 -->
	<link rel="stylesheet" href="<%=basePath%>assets/css/datepicker.css" />
	<link rel="stylesheet" href="<%=basePath%>assets/css/bootstrap-timepicker.css" />
	<link rel="stylesheet" href="<%=basePath%>assets/css/daterangepicker.css" />
	<link rel="stylesheet" href="<%=basePath%>css/svg_tips.css" type="text/css"></link>
    <link rel="STYLESHEET" type="text/css" href="<%=basePath%>css/page/distributionChartsMain.css"/> 	
	
    <script type="text/javascript" src="<%=basePath%>js/ace/ace-extra.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/util/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/ace/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/ace/ace-elements.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/ace/ace.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/util/messagebox.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/util/jqgrid-util.js"></script>
	
	<script type="text/javascript" src="<%=basePath%>js/util/cookie.js"></script>
  	<script type="text/javascript" src="<%=basePath%>js/util/jquery-input-rule.js"></script>
  	
  	<script type="text/javascript" src="<%=basePath%>js/util/dateFormat.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/util/DateFun.js"></script>
  	
  	<script type="text/javascript" src="<%=basePath%>assets/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/js/jquery.ui.touch-punch.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/js/chosen.jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/js/fuelux/fuelux.spinner.min.js"></script>
	
	<script type="text/javascript" src="<%=basePath%>assets/js/date-time/bootstrap-timepicker.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/js/date-time/moment.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/js/date-time/daterangepicker.min.js"></script>
	
	<script id="jqgridMin" 	      type="text/javascript" src="<%=basePath%>assets/js/jqGrid/jquery.jqGrid.min.js"></script>
	<script id="jqgridLocale"     type="text/javascript" src="<%=basePath%>assets/js/jqGrid/i18n/grid.locale-en.js"></script>
	<script id="datepicker"    	  type="text/javascript" src="<%=basePath%>assets/js/date-time/bootstrap-datepicker.min.js"></script>
	<script id="datepickerCN"     type="text/javascript" src="<%=basePath%>assets/js/date-time/bootstrap-datepicker.zh-CN.js"></script>
	   <script>
	   var basePath="<%=basePath%>";
	   var companyName = "<%=request.getParameter("companyName")%>";
	   var username  = "<%=request.getParameter("userName")%>";
	   </script>
  </head>
  
  <body>
    <center>
    <%=request.getParameter("companyName")%><br>
    </center>
    <div id="" class="" style="position:absolute;top:25px;width:90%;height:370px;left:5%;background-color:#F4F1F4">
    <textarea id="textarea" class="textarea" style="resize: none;width:100%;height:350px;" readonly="readonly"></textarea>
    <input id="inputtext" class="inputtext" type="text" style="width:80%;"/>
    <input id="sendButton" class="sendButton" type="button" style="width:134px;margin-left:-8px;"  onclick="sendButton();" value="发送">
    </div>
    <div id="discussbutton" class="discussbutton" style="position:absolute;left:678px;top:25;width:50px;height:350px;">
    </div>
    
<!--    <div id="grid" class="iframe" style="position: absolute;top:0px;border:0;width:1000px;height:500px;display:none">-->
	   <div class="col-xs-12 progressRate colorSet" style="display:none">
			<div id="gridPreDiv"  class="space-6"></div>
			<table id="gridBox"></table>
			<div id="gridBoxPage"></div>
	   </div>    	
  </body>
  <script type="text/javascript" src="js/discussDialog.js"></script>
</html>
