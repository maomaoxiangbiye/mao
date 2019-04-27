$(function(){
	loadShengFen();
	if(operType=="edit"){
		initMessageParam();
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

function initMessageParam(){
	
	var shengName  			=  gridCommon.getCellsText(rowId, 	"shengName");
    var shengJianJie  		=  gridCommon.getCellsText(rowId, 	"shengJianJie");
	var shengXiangQing  	=  gridCommon.getCellsText(rowId, 	"shengXiangQing");
    // isShow     	 	=  gridCommon.getCellsText(rowId, 	"isShow");    
	
    $("#shengName").val(shengName);
    $("#shengJianJie").val(shengJianJie);
    $("#shengXiangQing").val(shengXiangQing);
	
}

function onOk(){
	var supportRoleinfo = {};
	var url = "managerCtrl/listMessageMsg";
	if (operType == "edit") { //编辑
		supportRoleinfo._method='put';
		supportRoleinfo.id = rowId;
	}
	
	supportRoleinfo.shengName 		= $("#shengName").val();
	supportRoleinfo.shengJianJie 	= $("#shengJianJie").val();
	supportRoleinfo.shengXiangQing  = $("#shengXiangQing").val();
	supportRoleinfo.shengPic  		= $("#fileDesc").val();
	
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
				alert(data.error);
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