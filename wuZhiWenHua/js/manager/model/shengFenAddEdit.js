$(function(){
	loadShengFen();
	if(operType=="edit"){
		//initUserParam();
	}
});

function loadShengFen(){
	var paramJson = {};
	paramJson.describe = "";
	$.ajax( {
		url : "managerCtrl/listShengFenMsg", //后台处理程序
		type : 'get', //数据发送方式
		dataType : "json",
		data : {'param':JSON.stringify(paramJson)}, //要传递的数据；就是上面序列化的值
		success : function(data) { //回传函数
			if (data.code == 1) {
				$("#shengName").empty();
				for(var i =0;i<data.rows.length;i++){
					$("#shengName").append("<option value='"+data.rows[i].shengFenName+"'>"+data.rows[i].shengFenDesc+"</option>");
				}
			} else {
				alert(data.error);
			}
		}
	});
}

function initUserParam(){
	
	var userName 	 = gridCommon.getCellsText(rowId, "userName");
    var userDescribe = gridCommon.getCellsText(rowId, "userDescribe");
	
    $("#userPwd").val(userPassWord);
    $("#userName").val(userName);
}

function onOk(){
	var supportRoleinfo = {};
	var url = "managerCtrl/listShengFenMsg";
	if (operType == "edit") { //编辑
		supportRoleinfo._method='put';
		supportRoleinfo.id = rowId;
	}
	
	supportRoleinfo.shengFenXiangQing = $("#shengJianJie").val();
	
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