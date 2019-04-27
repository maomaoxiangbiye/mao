$(function(){
	if(operType=="edit"){
		initFlowerTypeParam();
	}
});

function initFlowerTypeParam(){
	var flowerId 	 = gridCommon.getCellsText(rowId, "flowerId");
	var flowerName 	 = gridCommon.getCellsText(rowId, "flowerName");
    var flowerDesc   = gridCommon.getCellsText(rowId, "flowerDesc");
	var flowerDetail = gridCommon.getCellsText(rowId, "flowerDetail");  
    
	var flowerNames = flowerName.split(">")[1].split("<")[0];
	
	$("#flowerId").attr("readonly","readonly");
	$("#flowerId").val(flowerId);
    $("#flowerName").val(flowerNames);
    $("#flowerDesc").val(flowerDesc);
    $("#flowerDetail").val(flowerDetail);
}

function onOk(){
	var supportRoleinfo = {};
	var url = "managerCtrl/flowerType";
	if (operType == "edit") { //编辑
		supportRoleinfo._method='put';
		supportRoleinfo.flowerId = rowId;
	}
	
	supportRoleinfo.flowerName = $("#flowerName").val();
	supportRoleinfo.flowerDesc = $("#flowerDesc").val();
	supportRoleinfo.flowerDetail = $("#flowerDetail").val();
	supportRoleinfo.reserve1 = $("#reserve1").val();
	
	
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