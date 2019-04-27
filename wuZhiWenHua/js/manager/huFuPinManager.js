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
	var orderDesc = $("#orderDesc").val();
 	paramJson.describe =orderDesc;
	
	gridCommon.colNames     = ['序号', '手机图片','手机编号','手机名称', '手机类型名称', '手机数量','手机单价','时间','操作'];	//列名	
	gridCommon.url          = "managerCtrl/fuhupinDetail";	//请求地址
	gridCommon.gridId       = "gridBox";				//表格加载div的id
//	gridCommon.pageId       = "gridBoxPage";				分页加载div的id
	gridCommon.paramJson    = paramJson;		        //查询传递参数
	gridCommon.autowidth    = true;			            //自动分配宽度
	gridCommon.height       =  "auto";				        //表格div的高度
	gridCommon.colModel     = [
				                {name:'index',	   		width:150, editable:false, sortable:false, align:'center'},
				                {name:'pictureUrl',		width:250, editable:false, sortable:false, align:'left'},
				                {name:'huFuPinId',   	width:200, editable:false, sortable:false, align:'left'},
				                {name:'huFuPinName',   	width:200, editable:false, sortable:false, align:'left'},
				                {name:'huFuPinTypeName',width:250, editable:false, sortable:false, align:'left'},
				                {name:'huFuPinNum',		width:250, editable:false, sortable:false, align:'left'},
				                {name:'huFuPinPrice',	width:250, editable:false, sortable:false, align:'left'},
				                {name:'time',			width:250, editable:false, sortable:false, align:'left'},
				                {name:'option',			width:200, editable:false, sortable:false, align:'left'}
				               ];	//列参数
	gridCommon.setMultiSelect(true);       //全选功能
	gridCommon.setRowNum(30000);
	gridCommon.loadgrid();
}

//按条件搜素
function onSearch(){
	initGrid();
}

function onAdd(){
	var url="jsp/manager/model/orderAddEdit.jsp?operType="+"add";
	
	modalUtil.setModalWidth(650);
	modalUtil.setModalHeight(450);
	modalUtil.setHeaderText("手机配置")
	modalUtil.setBodyUrl(url);
			
	modalUtil.show();
			
	modalUtil.setClickListener(function(){onOk()});
}

function editData(rowId,orderUserid){
	var url="jsp/manager/model/orderAddEdit.jsp?rowId="+rowId+"&operType="+"edit"+"&orderUserid="+orderUserid;
	
	modalUtil.setModalWidth(650);
	modalUtil.setModalHeight(450);
	modalUtil.setHeaderText("手机配置")
	modalUtil.setBodyUrl(url);
			
	modalUtil.show();
			
	modalUtil.setClickListener(function(){onOk()});
}

function onDelete(){
	var ids = gridCommon.getSelectedRowIds();
	
	if(ids != ""){
		messageBox.setPropertyCaption("警告");
		messageBox.setPropertyContent("确定要删除该记录吗？");
					
		messageBox.show();
		messageBox.setOnClickListener(function(){
		
			if (ids.length == 0) {
			    alert("至少选择一条记录.");
				return ;
			}
			$.ajax({
				url : "managerCtrl/fuhupinDetail/"+ids, //后台处理程序
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
	}else{
		alert("未选中任何记录，请重新选择！");
	}
}
