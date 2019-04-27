var gridCommon;
$(function(){
	initGrid();
})

function initGrid(){
	$("#gbox_gridBox").remove();
	$("#gridPreDiv").after("<table id='gridBox'></table>");
	gridCommon = null;
	gridCommon = new jqgrid();
	var paramJson = {};
 	paramJson.flowersType ="";
 	paramJson.userDescribe = $("#userDescribe").val();
 	
	gridCommon.colNames     = ['序号', '商品编号','商品名称','商品描述', '商品详情', '商品类型','商品价格','商品数量','购买','收藏'];	//列名	
	gridCommon.url          = "userMessage/flowersDetail";	//请求地址
	gridCommon.gridId       = "gridBox";				//表格加载div的id
//	gridCommon.pageId       = "gridBoxPage";				//分页加载div的id
	gridCommon.paramJson    = paramJson;		        //查询传递参数
	gridCommon.autowidth    = true;			            //自动分配宽度
	gridCommon.height       =  "calc(100vh - 285px)";			        //表格div的高度
	gridCommon.colModel     = [
				                {name:'index',	   		width:60,  editable:false, sortable:false, align:'center'},
				                {name:'flowersId',   	width:200, editable:false, sortable:false, align:'left'},
				                {name:'flowersName',   	width:200, editable:false, sortable:false, align:'left'},
				                {name:'flowersDesc',	width:250, editable:false, sortable:false, align:'left'},
				                {name:'flowersDetail',	width:250, editable:false, sortable:false, align:'left'},
				                {name:'flowersType',	width:200, editable:false, sortable:false, align:'left'},
				                {name:'flowersPrice',	width:200, editable:false, sortable:false, align:'left'},
				                {name:'flowersNum',		width:200, editable:false, sortable:false, align:'left'},
				                {name:'option1',			width:200, editable:false, sortable:false, align:'left'},
				                {name:'option2',			width:200, editable:false, sortable:false, align:'left'}
				               ];	//列参数
	gridCommon.setMultiSelect(true);       //全选功能
	gridCommon.setRowNum(30000);
	gridCommon.loadgrid();
}

//按条件搜素
function onSearch(){
	initGrid();
}

//生成订单
function buyFlower(rowId){
	var url="jsp/user/model/orderAdd.jsp?rowId="+rowId;
	
	modalUtil.setModalWidth(650);
	modalUtil.setModalHeight(450);
	modalUtil.setHeaderText("订单信息")
	modalUtil.setBodyUrl(url);
			
	modalUtil.show();
			
	modalUtil.setClickListener(function(){onOk()});
}

//收藏鲜花
function colFlower(rowId){
	var supportRoleinfo = {};
	var url = "userMessage/collectFlower";
	var flowersId 	 = gridCommon.getCellsText(rowId, "flowersId");
	supportRoleinfo.flowersId = flowersId;
	supportRoleinfo.userName = userName;

	$.ajax( {
		url : url, //后台处理程序
		type : 'post', //数据发送方式
		dataType : "json",
		data : supportRoleinfo, //要传递的数据；就是上面序列化的值
		success : function(data) { //回传函数
			if (data.code == 1) {
				alert("收藏成功");
			} else {
				alert("收藏失败");
			}
		}
	});
//	var supportRoleinfo = {};
//	var url = "userMessage/collectFlower";
//	
//	var flowersId 	 = gridCommon.getCellsText(rowId, "flowersId");
//	
//	supportRoleinfo.flowersId = flowersId;
//	supportRoleinfo.userName = userName;
//	
//	$.ajax( {
//		url : url, //后台处理程序
//		type : 'post', //数据发送方式
//		dataType : "json",
//		data : supportRoleinfo, //要传递的数据；就是上面序列化的值
//		success : function(data) { //回传函数
//			if (data.code == 1) {
//				alert("收藏成功");
//			} else {
//				alert("收藏失败");
//			}
//		}
//	});
	
	
}