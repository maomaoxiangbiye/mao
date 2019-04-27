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
    	var orderUserid='<%=request.getParameter("orderUserid")%>';
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
			<label class="control-label col-sm-3  no-padding-right" for="shengJianJie">非物质文化遗产介绍:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="shengJianJie" class="col-xs-12 col-sm-8" type="text" name="shengJianJie" placeholder="非物质文化遗产介绍" maxlength="16" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="space-2"></div>
		<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="shengXiangQing">非物质文化遗产详情:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="shengXiangQing" class="col-xs-12 col-sm-8" type="text" name="shengXiangQing" placeholder="非物质文化遗产详情" maxlength="10000" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="space-2"></div>
		<div class="form-group">
			<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="fileDesc">图片名称:</label>
			<div class="col-xs-3 col-sm-9">
				<div class="clearfix">
					<input id="fileDesc" class="col-xs-12 col-sm-8" type="text" name="fileDesc" maxlength="31" placeholder="图片名称" readonly="readonly"/>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="workAreaManMobile">浏览文件:</label>
			<div class="col-xs-3 col-sm-9">
				<div class="clearfix">
					<div id="excelDiv" class="col-xs-6" style="height:60px;padding:0;">
						<input type="file"  id="file" style="opacity:0;width:100%;height:100%" onchange="getFileName()">
						<button type="button" class="btn btn-primary btn-sm" onclick="clickFileDialog()" style="width:calc(100% - 30px);position:absolute;left:15px;top:calc(100% - 340px - 100px)"  >
	   						浏览
	   						<i class="icon-upload-alt icon-on-right"></i>
	   					</button>
					</div>
				</div>
			</div>
		</div>
	</div>
  </body>
  <script type="text/javascript" src="<%=basePath%>js/manager/model/messageAddEdit.js"></script>
</html>
