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
	var time 	 	     = gridCommon.getCellsText(rowId, "time");

	$("#huFuPinId").attr("readonly","readonly");
//	$("#orderUserid").attr("readonly","readonly");
    $("#huFuPinId").val(huFuPinId);
    $("#huFuPinName").val(huFuPinName);
    $("#huFuPinTypeName").val(huFuPinTypeName);
    $("#huFuPinNum").val(huFuPinNum);
    $("#huFuPinPrice").val(huFuPinPrice);
    $("#time").val(time);
}

function onOk(){
	var supportRoleinfo = {};
	var url = "managerCtrl/fuhupinDetail";
	if (operType == "edit") { //编辑
		supportRoleinfo._method='put';
			supportRoleinfo.huFuPinId = $("#huFuPinId").val();
	}
	
	supportRoleinfo.huFuPinName = $("#huFuPinName").val();
	supportRoleinfo.huFuPinTypeName = $("#huFuPinTypeName").val();
	supportRoleinfo.huFuPinNum = $("#huFuPinNum").val();
	supportRoleinfo.huFuPinPrice = $("#huFuPinPrice").val();
	supportRoleinfo.time = $("#time").val();
	supportRoleinfo.pictureUrl = $("#fileDesc").val();
	
	$.ajax( {
		url : url, //后台处理程序
		type : 'post', //数据发送方式
		dataType : "json",
		data : supportRoleinfo, //要传递的数据；就是上面序列化的值
		success : function(data) { //回传函数
			if (data.code == 1) {
				if($("#fileDesc").val() != ''){
					uploadPic();					
				}else{
					modalUtil.hide();
					if (operType != "edit"){ //添加完跳到最后一页
						gridCommon.reload(true);
					} else { //编辑完跳到当前页，并选中编辑行
						cookie.set("gridRowId", rowId);
						gridCommon.reload(false);
					}
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

function uploadPic(){
	var fileData=document.querySelector("#file");
	var formData = new FormData();
	
	formData.append("file",fileData.files[0]);
	formData.append("infoParam","");
	$.ajax({
		url:"uploadFolder/uploadPicFolder",
		type:"post",
		data:formData,
		cache:false,
		processData:false,
		contentType:false,
		success:function(data){
			if(data.result=="success"){
				modalUtil.hide();
				if (operType != "edit"){ //添加完跳到最后一页
					gridCommon.reload(true);
				} else { //编辑完跳到当前页，并选中编辑行
					cookie.set("gridRowId", rowId);
					gridCommon.reload(false);
				}
			}
		}
	});
}

function getFileName(){
	var name=document.getElementById("file").value;
	$("#fileDesc").val(name.substring(name.lastIndexOf("\\")+1));
}

function clickFileDialog(){
	document.getElementById("file").click();
}