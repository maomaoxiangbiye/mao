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
	var userDescribe 		=	$("#userDescribe").val();
 	paramJson.describe 		=	userDescribe;
	gridCommon.colNames     = ['序号', '省份','省份简介','操作'];	//列名	
	gridCommon.url          = "managerCtrl/listShengFenMsg";	//请求地址
	gridCommon.gridId       = "gridBox";				//表格加载div的id
	//gridCommon.pageId       = "gridBoxPage";				分页加载div的id
	gridCommon.paramJson    = paramJson;		        //查询传递参数
	gridCommon.autowidth    = true;			            //自动分配宽度
//	gridCommon.setMultiSelect(true);       //全选功能
	gridCommon.height       = "calc(100vh - 285px)";				        //表格div的高度
	gridCommon.colModel     = [
				                {name:'index',	   			width:60,  editable:false, sortable:false, align:'center'},
				                {name:'shengFenDesc',   	width:200, editable:false, sortable:false, align:'left'},
				                {name:'shengFenXiangQing',	width:250, editable:false, sortable:false, align:'left'},
				                {name:'option',				width:200, editable:false, sortable:false, align:'left'}
				               ];	//列参数
	gridCommon.setMultiSelect(true);       //全选功能
	gridCommon.setRowNum(10000);
	gridCommon.loadgrid();
}

//按条件搜素
function onSearch(){
	initGrid();
}

function editData(rowId){
	var url="jsp/manager/model/shengFenAddEdit.jsp?rowId="+rowId+"&operType="+"edit";
	
	modalUtil.setModalWidth(650);
	modalUtil.setModalHeight(450);
	modalUtil.setHeaderText("省份配置")
	modalUtil.setBodyUrl(url);
			
	modalUtil.show();
			
	modalUtil.setClickListener(function(){onOk()});
}