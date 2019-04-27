var gridCommon;
$(function(){
	initGrid();
	var paramJson = {};
	var orderDesc = $("#orderDesc").val();
 	paramJson.describe =orderDesc;
	$.ajax({
			url : "userMessage/fuhupinDetail", //后台处理程序
			type : 'get', //数据发送方式
			dataType :"json",
			data :  {"param" : JSON.stringify(paramJson)},      //要传递的数据；就是上面序列化的值
			success : function(data) { //回传函数
				if(data.code == 1){
					var dataArray = data.rows;
					initPicture(dataArray);
				}
			}
	});
})

function initGrid(){
	$("#gbox_gridBox").remove();
	$("#gridPreDiv").after("<table id='gridBox'></table><div id='gridBoxPage'></div>");
	gridCommon = null;
	gridCommon = new jqgrid();
	var paramJson = {};
	var orderDesc = $("#orderDesc").val();
 	paramJson.describe =orderDesc; 	
 	
	gridCommon.colNames     = ['序号', '手机图片','手机编号','手机名称', '手机类型名称', '手机数量','手机单价','时间','操作'];	//列名	
	gridCommon.url          = "userMessage/fuhupinDetail";	//请求地址
	gridCommon.gridId       = "gridBox";				//表格加载div的id
	gridCommon.pageId       = "gridBoxPage";				//分页加载div的id
	gridCommon.paramJson    = paramJson;		        //查询传递参数
	gridCommon.autowidth    = true;			            //自动分配宽度
	gridCommon.height       =  "400px";				        //表格div的高度
	gridCommon.colModel     = [
				                {name:'index',	   		width:150, editable:false, sortable:false, align:'center'},
				                {name:'pictureUrl',		width:250, editable:false, sortable:false, align:'left'},
				                {name:'huFuPinId',   	width:200, editable:false, sortable:false, align:'left'},
				                {name:'huFuPinName',   	width:200, editable:false, sortable:false, align:'left'},
				                {name:'huFuPinTypeName',width:250, editable:false, sortable:false, align:'left'},
				                {name:'huFuPinNum',		width:250, editable:false, sortable:false, align:'left'},
				                {name:'huFuPinPrice',	width:250, editable:false, sortable:false, align:'left'},
				                {name:'time',			width:250, editable:false, sortable:false, align:'left'},
				                {name:'option',			width:250, editable:false, sortable:false, align:'left'},
				               ];	//列参数
	gridCommon.setMultiSelect(false);       //全选功能
	gridCommon.setRowNum(10);
	gridCommon.isTitle = true;
	gridCommon.loadgrid();
	$(".ui-jqgrid-bdiv").css("background-color","white");
}

function initPicture(dataArray){
	for(var i=0;i<dataArray.length;i++){
		var jpg=dataArray[i].pictureUrl;
		if(jpg == '' || jpg == '无'){
			continue;
		}
		var imgHtml = "<img id='"+dataArray[i].huFuPinId+"' title='"+dataArray[i].huFuPinName+"' src='"+basePath+"picturefile/"+jpg+"' style='border-bottom:1px solid black;border-right:1px solid gray;width:25%;height:300px;cursor:pointer' onclick='editData(\""+dataArray[i].id+"\")'>";
		$("#divImage").append(imgHtml);
	}
}

//按条件搜素
function onSearch(){
	initGrid();
}

function onAdd(){
	var url="jsp/manager/model/orderAddEdit.jsp?operType="+"add";
	
	modalUtil.setModalWidth(650);
	modalUtil.setModalHeight(450);
	modalUtil.setHeaderText("订单配置")
	modalUtil.setBodyUrl(url);
			
	modalUtil.show();
			
	modalUtil.setClickListener(function(){onOk()});
}

function editData(rowId){
	var url="jsp/user/model/buyHuFuPin.jsp?rowId="+rowId+"&operType="+"edit";
	
	modalUtil.setModalWidth(650);
	modalUtil.setModalHeight(450);
	modalUtil.setHeaderText("购买")
	modalUtil.setBodyUrl(url);
			
	modalUtil.show();
			
	modalUtil.setClickListener(function(){onOk()});
}
