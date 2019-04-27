var gridCommon1;
$(function(){
	initGrid();
})

function initGrid(){
	$("#gbox_gridBox1").remove();
	$("#gridPreDiv1").after("<table id='gridBox1'></table><div id='gridBoxPage1'></div>");
	gridCommon1 = null;
	gridCommon1 = new jqgrid();
	var paramJson = {};
//	paramJson.userName =userName;
//	paramJson.describe =$("#userName").val();
	
	gridCommon1.colNames     = ['序号', '企业单位名称','企业单位描述','企业单位电话', '企业单位地址','岗位名称', '岗位描述','岗位要求','岗位待遇','人数','操作'];	//列名	
	gridCommon1.url          = "userMessage/listTuiJianJob";	//请求地址
	gridCommon1.gridId       = "gridBox1";				//表格加载div的id
	gridCommon1.pageId       = "gridBoxPage1";				//分页加载div的id
	gridCommon1.paramJson    = paramJson;		        //查询传递参数
	gridCommon1.autowidth    = true;			            //自动分配宽度
	gridCommon1.height       =  "400px";				        //表格div的高度
	gridCommon1.colModel     = [
				                {name:'index',	   			width:150,  editable:false, sortable:false, align:'center'},
				                {name:'userName',   		width:200, editable:false, sortable:false, align:'left'},
				                {name:'userDescribe',   	width:200, editable:false, sortable:false, align:'left'},
				                {name:'telphone',			width:250, editable:false, sortable:false, align:'left'},
				                {name:'address',			width:250, editable:false, sortable:false, align:'left'},
				                {name:'jobsName',			width:250, editable:false, sortable:false, align:'left'},				         
//				                {name:'flowersName',		width:250, editable:false, sortable:false, align:'left'},
				                {name:'jobsDesc',			width:250, editable:false, sortable:false, align:'left'},
				                {name:'jobsYqJieShao',		width:250, editable:false, sortable:false, align:'left'},
				                {name:'jobsMoney',			width:250, editable:false, sortable:false, align:'left'},
				                {name:'jobsPersons',		width:250, editable:false, sortable:false, align:'left'},
				                {name:'option',				width:250, editable:false, sortable:false, align:'left'}
				                ];	//列参数
	gridCommon1.setMultiSelect(false);       //全选功能
	gridCommon1.setRowNum(10);
	gridCommon1.isTitle = true;
	gridCommon1.loadgrid();
}

function updateListJob(rowId){
	alert("详情页");
}