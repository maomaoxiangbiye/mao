$(function(){
	
	initMyMessage();
	
});

function initMyMessage(){
	
	var supportRoleinfo = {};
	var url = "userMessage/myDetailMessage";
	
	supportRoleinfo.userName = userName;
	
	$.ajax( {
		url : url, //后台处理程序
		type : 'get', //数据发送方式
		dataType : "json",
		data : {'param':JSON.stringify(supportRoleinfo)}, //要传递的数据；就是上面序列化的值
		success : function(data) { //回传函数
			if (data.code == 1) {
				$("#user_name").attr("readonly","readonly");
				$("#user_name").val(userName);
				$("#user_address").val(data.rows[0].address);
				$("#user_phone").val(data.rows[0].telphone);
				$("#user_old").val(data.rows[0].userOld);
				$("#user_zhengzhi").val(data.rows[0].userZhengZhi);
				$("#user_sex").val(data.rows[0].userSex);
				$("#user_experience").val(data.rows[0].userWorkExperience);

				if(type==1){
					$("#user_address").attr("readonly","readonly");
					$("#user_phone").attr("readonly","readonly");
					$("#user_old").attr("readonly","readonly");
					$("#user_zhengzhi").attr("readonly","readonly");
					$("#user_sex").attr("disabled","disabled");
					$("#user_experience").attr("readonly","readonly");
					$("#submit").css("display","none");
				}
				
			} else {
				alert(data.error);
				//alertDialog.open( {
					//container : 'alertBox',
					//text : data.error
				//});
			}
		}
	});
	
}

function updateMessage(){
	
	if(!check()){
		return;
	}
	
	var supportRoleinfo = {};
	var url = "userMessage/myDetailMessage";
	supportRoleinfo._method='put';

	supportRoleinfo.userName = $("#user_name").val();
	supportRoleinfo.address = $("#user_address").val();
	supportRoleinfo.telphone = $("#user_phone").val();
	supportRoleinfo.userOld = $("#user_old").val();
	supportRoleinfo.userZhengZhi = $("#user_zhengzhi").val();
	supportRoleinfo.userSex = $("#user_sex").val();	
	supportRoleinfo.userWorkExperience = $("#user_experience").val();
	
	$.ajax( {
		url : url, //后台处理程序
		type : 'post', //数据发送方式
		dataType : "json",
		data : supportRoleinfo, //要传递的数据；就是上面序列化的值
		success : function(data) { //回传函数
			if (data.code == 1) {
				alert("确认成功");
			} else {
				alert("确认失败");
			}
		}
	});
	
	
	
}

function check(){
	if($("#user_name").val() ==''){
		alert("用户名不能为空.");
		return false;
	}
	if($("#user_address").val() ==''){
		alert("用户地址不能为空.");
		return false;
	}
	if($("#user_describe").val() ==''){
		alert("用户描述不能为空.");
		return false;
	}
	if($("#user_phone").val() ==''){
		alert("用户手机号不能为空.");
		return false;
	}
	if($("#user_password").val() ==''){
		alert("用户密码不能为空.");
		return false;
	}
	if($("#user_repassword").val() != $("#user_password").val()){
		alert("两次密码不一致.");
		return false;
	}
	return true;
}