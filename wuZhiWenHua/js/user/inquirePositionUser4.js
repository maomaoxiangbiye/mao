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
	paramJson.userName =userName;
	paramJson.describe =$("#userName").val();
	
	gridCommon.colNames     = ['序号', '企业单位名称','企业单位描述','企业单位电话', '企业单位地址','岗位名称', '岗位描述','岗位要求','岗位待遇','人数','操作'];	//列名	
	gridCommon.url          = "userMessage/listMyJobs";	//请求地址
	gridCommon.gridId       = "gridBox";				//表格加载div的id
//	gridCommon.pageId       = "gridBoxPage";				分页加载div的id
	gridCommon.paramJson    = paramJson;		        //查询传递参数
	gridCommon.autowidth    = true;			            //自动分配宽度
	gridCommon.height       =  "calc(100vh - 285px)";				        //表格div的高度
	gridCommon.colModel     = [
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
				                {name:'option',				width:250, editable:false, sortable:false, align:'left'},
				               ];	//列参数
	gridCommon.setMultiSelect(true);       //全选功能
	gridCommon.setRowNum(30000);
	gridCommon.loadgrid();
}

//按条件搜素
function onSearch(){
	initGrid();
}

function onDelete(ids){
	//var ids = gridCommon.getSelectedRowIds();
	
	var supportRoleinfo = {};
	var companyName 	 = gridCommon.getCellsText(ids, "userName");
	supportRoleinfo.companyName = companyName;
	supportRoleinfo.userName = userName;
		messageBox.setPropertyCaption("警告");
		messageBox.setPropertyContent("确定要删除该信息吗？");
					
		messageBox.show();
		messageBox.setOnClickListener(function(){
		
			$.ajax({
				url : "userMessage/listMyJobs", //后台处理程序
				type : 'post', //数据发送方式
				dataType :"json",
				data :  {
						 'param' : JSON.stringify(supportRoleinfo)
		            },      //要传递的数据；就是上面序列化的值
				success : function(data) { //回传函数
					if (data.code == 1 ) {
						gridCommon.reload(); 
					}
					else{
						alert(data.msg);
					}
				}
			});
		});
}