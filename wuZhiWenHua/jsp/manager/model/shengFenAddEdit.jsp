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
    <script type="text/javascript">
    	var rowId='<%=request.getParameter("rowId")%>';
    	var operType='<%=request.getParameter("operType")%>';
    </script> 
  </head>
  
  <body>
    <div class="form-horizontal">
    	<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="shengName">省份名:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<select id="shengName" class="col-xs-12 col-sm-8">
						
					</select>
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="shengJianJie">省份介绍:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<textarea id="shengJianJie" class="col-xs-12 col-sm-8" name="shengJianJie" placeholder="省份介绍" ></textarea>
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
	</div>
  </body>
  <script type="text/javascript" src="<%=basePath%>js/manager/model/shengFenAddEdit.js"></script>
</html>
