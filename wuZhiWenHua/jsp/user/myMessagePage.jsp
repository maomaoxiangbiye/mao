<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/loginRegister/common.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/loginRegister/login.css">
    <link rel="stylesheet" href="<%=basePath%>css/common/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=basePath%>css/common/bootstrap.css" type="text/css"/>
    <link rel="stylesheet" href="<%=basePath%>css/common/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=basePath%>css/common/ace.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=basePath%>/css/common/ace-rtl.min.css" type="text/css"/>
    <script type="text/javascript">
    	var type = "<%=request.getParameter("type")%>";
    </script>
  </head>
  
  <body>
	<div class="login_cont" style="margin:0px;width:100%;">
		<div class="input_signup active" style="width:300px;position:relative;left:calc(50% - 150px);top:50px">
			<label>用户名:</label>
			<input class="input" id="user_name" type="text" aria-label="用户名（包含字母／数字／下划线" placeholder="用户名">
			<div class="hint">请填写符合格式的用户名</div>			
			<label>地址:</label>
			<input class="input" id="user_address" type="text" aria-label="地址" placeholder="地址">
			<div class="hint">请填写地址</div>
			<label>联系方式:</label>
			<input class="input" id="user_phone" type="text" class="account" aria-label="手机号（仅支持中国大陆）" placeholder="手机号（仅支持中国大陆）">
			<div class="hint">请填写手机号</div>
			<label>年龄或生日:</label>
			<input class="input" id="user_old" type="text" aria-label="年龄或生日" placeholder="年龄或生日">
			<div class="hint">请填写年龄或生日</div>			
			<label>兴趣爱好:</label>
			<input class="input" id="user_zhengzhi" type="text" aria-label="兴趣爱好" placeholder="兴趣爱好">
			<div class="hint">请填写兴趣爱好</div>				
			<label>性别:</label><br>
			<select id="user_sex" style="width: 300px;">
				<option value="0">男</option>
				<option value="1">女</option>
			</select><br><br><br>
			<label>描述 :</label><br>
			<textarea class="input" id="user_experience" style="width:300px"></textarea>			
			<br><br><br>
			<input type="submit" id="submit" class="button" name="button" value="确认" onclick="updateMessage()">
		</div>
		
	</div>
  <script type="text/javascript" src="<%=basePath%>js/user/myMessagePage.js"></script>  
  </body>
</html>
