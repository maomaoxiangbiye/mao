$(function(){
	if(operType=="edit"){
		initUserParam();
	}
});

function initUserParam(){
	
	var userName 	 = gridCommon.getCellsText(rowId, "userName");
    var userDescribe = gridCommon.getCellsText(rowId, "userDescribe");
	var address      = gridCommon.getCellsText(rowId, "address");
    var telphone     = gridCommon.getCellsText(rowId, "telphone");   
    var userPassWord = gridCommon.getCellsText(rowId, "userPassWord");   
	
    $("#userPwd").val(userPassWord);
    $("#userName").val(userName);
    $("#address").val(address);
    $("#telphone").val(telphone);
    $("#userDesc").val(userDescribe);
}

function onOk(){
	var supportRoleinfo = {};
	var url = "managerCtrl/manager";
	if (operType == "edit") { //编辑
		supportRoleinfo._method='put';
		supportRoleinfo.userId = rowId;
	}
	
	supportRoleinfo.loginType = $("#userType").val();
	supportRoleinfo.userName = $("#userName").val();
	supportRoleinfo.userDescribe = $("#userDesc").val();
	supportRoleinfo.address = $("#address").val();
	supportRoleinfo.telphone = $("#telphone").val();
	supportRoleinfo.userPassword = $("#userPwd").val();
	
	$.ajax( {
		url : url, //后台处理程序
		type : 'post', //数据发送方式
		dataType : "json",
		data : supportRoleinfo, //要传递的数据；就是上面序列化的值
		success : function(data) { //回传函数
			if (data.code == 1) {
				modalUtil.hide();
				if (operType != "edit"){ //添加完跳到最后一页
					gridCommon.reload(true);
				} else { //编辑完跳到当前页，并选中编辑行
					cookie.set("gridRowId", rowId);
					gridCommon.reload(false);
				}
			} else {
				alertDialog.open( {
					container : 'alertBox',
					text : data.error
				});
			}
		}
	});
}