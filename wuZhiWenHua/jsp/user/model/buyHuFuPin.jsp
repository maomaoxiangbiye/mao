<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>购买</title>
    <script type="text/javascript">
    	var rowId='<%=request.getParameter("rowId")%>';
    	var operType='<%=request.getParameter("operType")%>';
    </script> 
  </head>
  
  <body>
    <div class="form-horizontal">
    	<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="huFuPinId">手机编号:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="huFuPinId" class="col-xs-12 col-sm-8" type="text" name="huFuPinId" placeholder="手机编号" maxlength="16" />
				</div>
			</div>
		</div>
		<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="huFuPinName">手机名称:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="huFuPinName" class="col-xs-12 col-sm-8" type="text" name="huFuPinName" placeholder="手机名称" maxlength="16" />
				</div>
			</div>
		</div>
		<div class="space-2"></div>
		<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="huFuPinTypeName">手机类型名称:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="huFuPinTypeName" class="col-xs-12 col-sm-8" type="text" name="huFuPinTypeName" placeholder="手机类型名称" maxlength="16" />
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
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="address">收货地址:</label>
			<div class="col-xs-3 col-sm-9">
				<div class="clearfix">
					<input id="address" class="col-xs-12 col-sm-8" type="text" name="address" maxlength="31" placeholder="收货地址"/>
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="telphone">联系电话:</label>
			<div class="col-xs-3 col-sm-9">
				<div class="clearfix">
					<input id="telphone" class="col-xs-12 col-sm-8" type="text" name="telphone" maxlength="31" placeholder="联系电话"/>
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="payType">支付方式:</label>
			<div class="col-xs-3 col-sm-9">
				<select class="input" id="payType" style="width:297px;height:30px;">
					<option value="1">支付宝</option>
					<option value="2">微信</option>
					<option value="3">银联</option>
				</select>
			</div>
		</div>
	</div>
  </body>
  <script type="text/javascript" src="<%=basePath%>js/user/model/buyHuFuPin.js"></script>
</html>
