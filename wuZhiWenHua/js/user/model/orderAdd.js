$(function(){
	initOrderParam();
});

function initOrderParam(){
	//             
	//var orderId 	 = gridCommon.getCellsText(rowId, "orderId");
	//var orderName 	 = gridCommon.getCellsText(rowId, "orderName");
	var orderUserid 	 = userName;
	
	var orderFlowerid 	 = gridCommon.getCellsText(rowId, "flowersId");
	var orderFlowerType 	 = gridCommon.getCellsText(rowId, "flowersType");
	var orderFlowernum 	 = gridCommon.getCellsText(rowId, "flowersNum");
	var orderSize 	 = gridCommon.getCellsText(rowId, "flowersSize");
	$("#orderUserid").attr("readonly","readonly");

	$("#orderFlowerType").attr("readonly","readonly");

    $("#orderUserid").val(userName);
    $("#orderFlowerid").val(orderFlowerid);
    $("#orderFlowerType").val(orderFlowerType);
    $("#orderFlowernum").val(orderFlowernum);

}

function onOk(){
	var supportRoleinfo = {};
	var url = "userMessage/order";
	
	supportRoleinfo.orderUserid = userName;
	supportRoleinfo.orderName = $("#orderName").val();
	supportRoleinfo.orderFlowerid = $("#orderFlowerid").val();
	supportRoleinfo.orderFlowerType = $("#orderFlowerType").val();
	supportRoleinfo.orderFlowernum = $("#orderFlowernum").val();
	supportRoleinfo.orderSize = $("#orderSize").val();
	supportRoleinfo.orderdate = $("#orderdate").val();
	supportRoleinfo.ordertime = $("#ordertime").val();
	supportRoleinfo.orderAddress = $("#orderAddress").val();
	
	$.ajax( {
		url : url, //后台处理程序
		type : 'post', //数据发送方式
		dataType : "json",
		data : supportRoleinfo, //要传递的数据；就是上面序列化的值
		success : function(data) { //回传函数
			if (data.code == 1) {
				modalUtil.hide();
			} else {
				alert("生成订单失败");
			}
		}
	});
}