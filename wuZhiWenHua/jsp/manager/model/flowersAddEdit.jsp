<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>flowersAddEdit.jsp</title>
    <script type="text/javascript">
    	var rowId='<%=request.getParameter("rowId")%>';
    	var operType='<%=request.getParameter("operType")%>';
    </script>      
  </head>
  
  <body>
    <div class="form-horizontal">
    	<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="flowersId">商品编号:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="flowersId" class="col-xs-12 col-sm-8" type="text" name="flowersId" placeholder="商品编号" maxlength="16" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="flowersName">商品名称:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="flowersName" class="col-xs-12 col-sm-8" type="text" name="flowersName" placeholder="商品名称" maxlength="16" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="space-2"></div>
		<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="flowersDesc">商品描述:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="flowersDesc" class="col-xs-12 col-sm-8" type="text" name="flowersDesc" placeholder="商品描述" maxlength="16" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="space-2"></div>
		<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="flowersDetail">商品详情:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="flowersDetail"class="col-xs-12 col-sm-8" type="text" name="flowersDetail" placeholder="商品详情" maxlength="16" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="flowersType">商品类型</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="flowersType"class="col-xs-12 col-sm-8" type="text" name="flowersType" placeholder="商品类型" maxlength="16" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="flowersPrice">商品价格</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="flowersPrice"class="col-xs-12 col-sm-8" type="text" name="flowersPrice" placeholder="商品价格" maxlength="16" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="space-2"></div>
		<div class="form-group">
			<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="flowersNum">商品数量:</label>
			<div class="col-xs-3 col-sm-9">
				<div class="clearfix">
					<input id="flowersNum" class="col-xs-12 col-sm-8" type="text" name="flowersNum" maxlength="31" placeholder="商品数量"/>
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="<%=basePath%>js/manager/model/flowersAddEdit.js"></script>
  </body>
</html>
