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
			<label class="control-label col-sm-3  no-padding-right" for="huFuPinId">手机编号:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="huFuPinId" class="col-xs-12 col-sm-8" type="text" name="huFuPinId" placeholder="手机编号" maxlength="16" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="huFuPinName">手机名称:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="huFuPinName" class="col-xs-12 col-sm-8" type="text" name="huFuPinName" placeholder="手机名称" maxlength="16" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="space-2"></div>
		<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="huFuPinTypeName">手机类型名称:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="huFuPinTypeName" class="col-xs-12 col-sm-8" type="text" name="huFuPinTypeName" placeholder="手机类型名称" maxlength="16" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="space-2"></div>
		<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="huFuPinNum">手机数量:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="huFuPinNum"class="col-xs-12 col-sm-8" type="text" name="huFuPinNum" placeholder="手机数量" maxlength="16" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="space-2"></div>
		<div class="form-group">
			<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="huFuPinPrice">手机单价:</label>
			<div class="col-xs-3 col-sm-9">
				<div class="clearfix">
					<input id="huFuPinPrice" class="col-xs-12 col-sm-8" type="text" name="huFuPinPrice" maxlength="31" placeholder="手机单价"/>
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="fileDesc">文件名称:</label>
			<div class="col-xs-3 col-sm-9">
				<div class="clearfix">
					<input id="fileDesc" class="col-xs-12 col-sm-8" type="text" name="fileDesc" maxlength="31" placeholder="文件名称" readonly="readonly"/>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="workAreaManMobile">浏览文件:</label>
			<div class="col-xs-3 col-sm-9">
				<div class="clearfix">
					<div id="excelDiv" class="col-xs-6" style="height:60px;padding:0;">
						<input type="file"  id="file" style="opacity:0;width:100%;height:100%" onchange="getFileName()">
						<button type="button" class="btn btn-primary btn-sm" onclick="clickFileDialog()" style="width:calc(100% - 30px);position:absolute;left:15px;top:calc(100% - 34px - 10px)"  >
	   						浏览
	   						<i class="icon-upload-alt icon-on-right"></i>
	   					</button>
					</div>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="time">时间:</label>
			<div class="col-xs-3 col-sm-9">
				<div class="clearfix">
					<input id="time" class="col-xs-12 col-sm-8" type="text" name="time" maxlength="31" placeholder="时间"/>
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
	</div>
  </body>
  <script type="text/javascript" src="<%=basePath%>js/manager/model/orderAddEdit.js"></script>
</html>
