$(function(){
	if(operType=="edit"){
		initOrderParam();
	}
});

function initOrderParam(){
	//             
	var huFuPinId 	     = gridCommon.getCellsText(rowId, "huFuPinId");
	var huFuPinName 	 = gridCommon.getCellsText(rowId, "huFuPinName");
	var huFuPinTypeName  = gridCommon.getCellsText(rowId, "huFuPinTypeName");
	var huFuPinNum 	 	 = gridCommon.getCellsText(rowId, "huFuPinNum");
	var huFuPinPrice 	 = gridCommon.getCellsText(rowId, "huFuPinPrice");

	$("#huFuPinId").attr("readonly","readonly");
	$("#huFuPinName").attr("readonly","readonly");
	$("#huFuPinTypeName").attr("readonly","readonly");
	//$("#huFuPinNum").attr("readonly","readonly");
	$("#huFuPinPrice").attr("readonly","readonly");
//	$("#orderUserid").attr("readonly","readonly");
    $("#huFuPinId").val(huFuPinId);
    $("#huFuPinName").val(huFuPinName);
    $("#huFuPinTypeName").val(huFuPinTypeName);
    $("#huFuPinNum").val(huFuPinNum);
    $("#huFuPinPrice").val(huFuPinPrice);
}

function onOk(){
	var supportRoleinfo = {};
	var url = "userMessage/buyCar";
	supportRoleinfo.huFuPinId = $("#huFuPinId").val();
	
	supportRoleinfo.buyNum = $("#huFuPinNum").val();
	supportRoleinfo.userName = userName;
	supportRoleinfo.address  = $("#address").val();
	supportRoleinfo.telphone = $("#telphone").val();
	supportRoleinfo.payType  = $("#payType").val();
	
	
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