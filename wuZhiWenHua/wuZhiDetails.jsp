<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <meta name="description" content="">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
    <link href="css/shi/font-awesome.min.css" rel="stylesheet">
    <link href="css/shi/bootstrap.min.css" rel="stylesheet">
    <link href="css/shi/templatemo-style.css" rel="stylesheet">

    <base href="<%=basePath%>">
    
    <title>省份非物质文化遗产详细信息</title>
	<style type="text/css">
		#mainContent p{
			font-size:18px	
		}
		#mainContent #aa{
			font-size:20px;
			font-family:"黑体";
		}			
	</style>
	
    <!-- Left column -->
    <div class="templatemo-flex-row">
      <div class="templatemo-sidebar">
        <header class="templatemo-site-header">
          
          <h1>非物质文化遗产展示</h1>
        </header>
        <div class="profile-photo-container">
          <img src="images/xiaotu.jpg" alt="Profile Photo" class="img-responsive">  
          <div class="profile-photo-overlay"></div>
        </div>      
        <div class="mobile-menu-icon">
            <i class="fa fa-bars"></i>
        </div>
        <nav class="templatemo-left-nav">          
          <ul>
            <li><a href="#" class="active"><i class="fa fa-home fa-fw"></i>首页</a></li>
            <li><a href="jsp/loginRegister/loginRegister.jsp"><i class="fa fa-bar-chart fa-fw"></i>注册</a></li>
            <li><a href="jsp/loginRegister/loginRegister.jsp"><i class="fa fa-database fa-fw"></i>登录</a></li>
            
          </ul>  
        </nav>
      </div>
	 <!-- Main content --> 
	<div class="templatemo-content col-1 light-gray-bg">
        <div class="templatemo-top-nav-container">
          <div class="row">
            <nav class="templatemo-top-nav col-lg-12 col-md-12">
              <ul class="text-uppercase">
                <li><a href="" class="active"></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
              </ul>  
            </nav> 
          </div>
        </div>
          </head>
        <div class="templatemo-content-container">
         
            

	<script type="text/javascript" src="<%=basePath%>js/util/jquery-2.0.3.min.js"></script>	
	<script type="text/javascript">
		var shengFenId = '<%=request.getParameter("shengFenId")%>';
		var userName = '<%=request.getParameter("userName")%>';
		var basePath="<%=basePath%>";
	</script>
  	<script type="text/javascript" src="js/lhgcore.js"></script>
    <script type="text/javascript" src="js/lhgdialog.js"></script>	
  
  
  <body>
   <div class="templatemo-content-container">
  	<div id="div1"></div>

    <script type="text/javascript">
    	$(function(){
			var paramJson = {};
			 	paramJson.describe = shengFenId;
				$.ajax( {
					url : "managerCtrl/listMessageMsg", //后台处理程序
					type : 'get', //数据发送方式
					dataType : "json",
					data : {'param':JSON.stringify(paramJson)}, //要传递的数据；就是上面序列化的值
					success : function(data) { //回传函数
						if (data.code == 1) {
							$("#div1").after("<hr><button type='button' class='btn btn-purple btn-sm ml10' style='float:right' onclick='onSearch()'>评论<i class='icon-search icon-on-right'></i></button>");
							for(var i =0;i<data.rows.length;i++){
								$("#div1").after("<p id='textId"+data.rows[i].index+"' style='font-size:28;height:300px;width:calc(100% - 100px);margin-left:50px;margin-right:50px'>"+data.rows[i].shengXiangQing+"</p>");							
								$("#div1").after("<p id='textIdName"+data.rows[i].index+"' style='font-size:40;height:50px;width:calc(100vw - 100px);margin-left:50px;margin-right:50px'>"+data.rows[i].shengJianJie+"</p>");
								$("#div1").after("<img id='img"+data.rows[i].index+"' width='800px' height='500px' style='margin-left:50px;' src='picturefile/"+data.rows[i].shengPicUrl+"'>")
								
							}									
						} else {
							alert("无数据，请录入");
						}
					}
				});
    		//$("#textId").text(shengFenId);
    	});
    	function onSearch(){
    		if(userName != '登录' || userName == 'null'){
			 	 var companyName = shengFenId;
				 J.dialog.get({
			        	 id: 'haoyue_creat',
			        	 title: '评论',
			        	 width: 780,
			        	 height:520, 
			        	 link: basePath+'jsp/user/discussDialog.jsp?companyName='+companyName+"&userName="+userName, cover:true
			     });   		
    		} else{
    			alert("请先登录.");
    		}   		
    	}
    </script>
    </div>
  </body>
</html>
