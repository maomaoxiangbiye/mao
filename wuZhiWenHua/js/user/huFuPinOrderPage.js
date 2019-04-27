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
	
	gridCommon.colNames     = ['序号', '手机编号','用户名称', '地址', '联系方式','购买数量','时间','支付类型','操作'];	//列名	
	gridCommon.url          = "userMessage/buyCar";	//请求地址
	gridCommon.gridId       = "gridBox";				//表格加载div的id
//	gridCommon.pageId       = "gridBoxPage";				分页加载div的id
	gridCommon.paramJson    = paramJson;		        //查询传递参数
	gridCommon.autowidth    = true;			            //自动分配宽度
	gridCommon.height       =  "auto";				        //表格div的高度
	gridCommon.colModel     = [
				                {name:'index',	   		width:150, editable:false, sortable:false, align:'center'},
				                {name:'huFuPinId',   	width:200, editable:false, sortable:false, align:'left'},
				                {name:'userName',   	width:200, editable:false, sortable:false, align:'left'},
				                {name:'address',		width:250, editable:false, sortable:false, align:'left'},
				                {name:'telphone',		width:250, editable:false, sortable:false, align:'left'},
				                {name:'buyNum',			width:250, editable:false, sortable:false, align:'left'},
				                {name:'time',			width:250, editable:false, sortable:false, align:'left'},
				                {name:'payType',		width:250, editable:false, sortable:false, align:'left'},
				                {name:'option',			width:250, editable:false, sortable:false, align:'left'},
				               ];	//列参数
	gridCommon.setMultiSelect(true);       //全选功能
	gridCommon.setRowNum(30000);
	gridCommon.loadgrid();
}

//按条件搜素
function onSearch(){
	initGrid();
}

function editData(rowId){
	var ids= [rowId];
		messageBox.setPropertyCaption("警告");
		messageBox.setPropertyContent("确定要删除该记录吗？");
					
		messageBox.show();
		messageBox.setOnClickListener(function(){
			$.ajax({
				url : "userMessage/buyCar/"+ids, //后台处理程序
				type : 'post', //数据发送方式
				dataType :"json",
				data :  {
						 _method : "delete"
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
