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
    </script> 
  </head>
  
  <body>
    <div class="form-horizontal">
		<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="orderName">订单名称:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="orderName" class="col-xs-12 col-sm-8" type="text" name="orderName" placeholder="订单名称" maxlength="16" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="space-2"></div>
		<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="orderUserid">用户编号:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="orderUserid" class="col-xs-12 col-sm-8" type="text" name="orderUserid" placeholder="用户名称" maxlength="16" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="space-2"></div>
		<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="orderFlowerid">鲜花编号:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="orderFlowerid"class="col-xs-12 col-sm-8" type="text" name="orderFlowerid" placeholder="鲜花编号" maxlength="16" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="space-2"></div>
		<div class="form-group">
			<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="orderFlowerType">鲜花类型:</label>
			<div class="col-xs-3 col-sm-9">
				<div class="clearfix">
					<input id="orderFlowerType" class="col-xs-12 col-sm-8" type="text" name="orderFlowerType" maxlength="31" placeholder="鲜花类型"/>
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="orderFlowernum">鲜花数量:</label>
			<div class="col-xs-3 col-sm-9">
				<div class="clearfix">
					<input id="orderFlowernum" class="col-xs-12 col-sm-8" type="text" name="orderFlowernum" maxlength="31" placeholder="鲜花数量"/>
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="orderSize">鲜花型号:</label>
			<div class="col-xs-3 col-sm-9">
				<div class="clearfix">
					<input id="orderSize" class="col-xs-12 col-sm-8" type="text" name="orderSize" maxlength="31" placeholder="鲜花型号"/>
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="orderdate">鲜花日期:</label>
			<div class="col-xs-3 col-sm-9">
				<div class="clearfix">
					<input id="orderdate" class="col-xs-12 col-sm-8" type="text" name="orderdate" maxlength="31" placeholder="鲜花日期"/>
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="ordertime">鲜花时间:</label>
			<div class="col-xs-3 col-sm-9">
				<div class="clearfix">
					<input id="ordertime" class="col-xs-12 col-sm-8" type="text" name="ordertime" maxlength="31" placeholder="鲜花时间"/>
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="orderAddress">用户地址:</label>
			<div class="col-xs-3 col-sm-9">
				<div class="clearfix">
					<input id="orderAddress" class="col-xs-12 col-sm-8" type="text" name="orderAddress" maxlength="31" placeholder="用户地址"/>
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
	</div>
  </body>
  <script type="text/javascript" src="<%=basePath%>js/user/model/orderAdd.js"></script>
</html>
