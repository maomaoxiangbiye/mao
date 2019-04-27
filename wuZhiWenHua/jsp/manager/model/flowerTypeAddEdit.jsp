<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>鲜花类型配置</title>
    <script type="text/javascript">
    	var rowId='<%=request.getParameter("rowId")%>';
    	var operType='<%=request.getParameter("operType")%>';
    </script>    
  </head>
  
  <body>
    <div class="form-horizontal">
    	<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="flowerId">鲜花编号:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="flowerId" class="col-xs-12 col-sm-8" type="text" name="flowerId" placeholder="鲜花编号" maxlength="16" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="flowerName">鲜花名称:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="flowerName" class="col-xs-12 col-sm-8" type="text" name="flowerName" placeholder="鲜花名称" maxlength="16" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="space-2"></div>
		<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="flowerDesc">鲜花描述:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="flowerDesc" class="col-xs-12 col-sm-8" type="text" name="flowerDesc" placeholder="鲜花描述" maxlength="16" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="space-2"></div>
		<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="flowerDetail">鲜花详情:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="flowerDetail"class="col-xs-12 col-sm-8" type="text" name="flowerDetail" placeholder="鲜花详情" maxlength="16" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="space-2"></div>
		<div class="form-group">
			<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="reserve1">备注:</label>
			<div class="col-xs-3 col-sm-9">
				<div class="clearfix">
					<input id="reserve1" class="col-xs-12 col-sm-8" type="text" name="reserve1" maxlength="31" placeholder="备注"/>
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="<%=basePath%>js/manager/model/flowersTypeAddEdit.js"></script>
  </body>
</html>
