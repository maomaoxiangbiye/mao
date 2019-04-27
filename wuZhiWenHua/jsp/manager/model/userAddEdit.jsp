<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>用户添加修改</title>
    <script type="text/javascript">
    	var rowId='<%=request.getParameter("rowId")%>';
    	var operType='<%=request.getParameter("operType")%>';
    </script>
  </head>
  
  <body>
    <div class="form-horizontal">
		<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="userName">用户名称:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="userName" class="col-xs-12 col-sm-8" type="text" name="userName" placeholder="用户名称" maxlength="16" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="space-2"></div>
		<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="userDesc">用户描述:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="userDesc" class="col-xs-12 col-sm-8" type="text" name="userDesc" placeholder="用户描述" maxlength="16" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="userDesc">用户密码:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="userPwd" class="col-xs-12 col-sm-8" type="password" name="userPwd" placeholder="用户密码" maxlength="16" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="space-2"></div>
		<div class="form-group">	
			<label class="control-label col-sm-3  no-padding-right" for="workAreaMan">用户地址:</label>
			<div class="col-sm-9">
				<div class="clearfix">
					<input id="address"class="col-xs-12 col-sm-8" type="text" name="address" placeholder="用户地址" maxlength="16" />
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="space-2"></div>
		<div class="form-group">
			<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="telphone">用户电话:</label>
			<div class="col-xs-3 col-sm-9">
				<div class="clearfix">
					<input id="telphone" class="col-xs-12 col-sm-8" type="text" name="telphone" maxlength="31" placeholder="用户电话"/>
				    <span class="tips">* 必填项 </span>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="userType">用户类型:</label>
			<div class="col-xs-3 col-sm-9">
				<div class="clearfix">
					<select id="userType" class="col-xs-12 col-sm-8" style="padding-left:0px" name="userType">
						<option value="2">用户</option>
					</select>
				</div>
			</div>
		</div>
	</div>
  </body>
  <script type="text/javascript" src="<%=basePath%>js/manager/model/userAddEdit.js"></script>
</html>
