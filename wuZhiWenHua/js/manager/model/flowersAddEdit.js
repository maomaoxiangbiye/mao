$(function(){
	if(operType=="edit"){
		initFlowerDetailParam();
	}
});

function initFlowerDetailParam(){
	var flowersId 	 = gridCommon.getCellsText(rowId, "flowersId");
	var flowersName 	 = gridCommon.getCellsText(rowId, "flowersName");
    var flowersDesc   = gridCommon.getCellsText(rowId, "flowersDesc");
	var flowersDetail = gridCommon.getCellsText(rowId, "flowersDetail");  
   // var flowersType = gridCommon.getCellsText(rowId, "flowersType");  
    var flowersPrice = gridCommon.getCellsText(rowId, "flowersPrice");  
	var flowersNum = gridCommon.getCellsText(rowId, "flowersNum");
    
    
	$("#flowersId").attr("readonly","readonly");
	$("#flowersId").val(flowersId);
	$("#flowersName").val(flowersName);
	$("#flowersDesc").val(flowersDesc);
	$("#flowersDetail").val(flowersDetail);
    $("#flowersPrice").val(flowersPrice);
    $("#flowersNum").val(flowersNum);
}

function onOk(){
	var supportRoleinfo = {};
	var url = "managerCtrl/flowersDetail";
	if (operType == "edit") { //编辑
		supportRoleinfo._method='put';
		supportRoleinfo.flowersId = rowId;
	}

	supportRoleinfo.flowersName = $("#flowersName").val();
	supportRoleinfo.flowersDesc = $("#flowersDesc").val();
	supportRoleinfo.flowersDetail = $("#flowersDetail").val();
	supportRoleinfo.flowersPrice = $("#flowersPrice").val();
	supportRoleinfo.flowersNum = $("#flowersNum").val();
	
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