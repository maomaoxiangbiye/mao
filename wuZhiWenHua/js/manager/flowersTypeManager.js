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
	var userDescribe = $("#userDescribe").val();
 	paramJson.describe =userDescribe;
	
	gridCommon.colNames     = ['序号', '商品类型编号','商品类型名称','商品类型描述', '商品类型详情', '操作'];	//列名	
	gridCommon.url          = "managerCtrl/flowerType";	//请求地址
	gridCommon.gridId       = "gridBox";				//表格加载div的id
	gridCommon.pageId       = "gridBoxPage";				//分页加载div的id
	gridCommon.paramJson    = paramJson;		        //查询传递参数
	gridCommon.autowidth    = true;			            //自动分配宽度
	gridCommon.height       =  "calc(100vh - 285px)";			        //表格div的高度
	gridCommon.colModel     = [
				                {name:'index',	   		width:60,  editable:false, sortable:false, align:'center'},
				                {name:'flowerId',   	width:200, editable:false, sortable:false, align:'left'},
				                {name:'flowerName',   	width:200, editable:false, sortable:false, align:'left'},
				                {name:'flowerDesc',		width:250, editable:false, sortable:false, align:'left'},
				                {name:'flowerDetail',	width:250, editable:false, sortable:false, align:'left'},
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
	var url="jsp/manager/model/flowerTypeAddEdit.jsp?"+"operType="+"add";;
	
	modalUtil.setModalWidth(650);
	modalUtil.setModalHeight(450);
	modalUtil.setHeaderText("商品类型配置")
	modalUtil.setBodyUrl(url);
			
	modalUtil.show();
			
	modalUtil.setClickListener(function(){onOk()});
}

function editData(rowId){
	var url="jsp/manager/model/flowerTypeAddEdit.jsp?rowId="+rowId+"&operType="+"edit";;
	
	modalUtil.setModalWidth(650);
	modalUtil.setModalHeight(450);
	modalUtil.setHeaderText("商品类型配置")
	modalUtil.setBodyUrl(url);
			
	modalUtil.show();
			
	modalUtil.setClickListener(function(){onOk()});
}

function nextPage(flowerType){
	$(".mainDiv").load("jsp/manager/flowersManager.jsp?flowerType="+flowerType);
}

function onDelete(){
	var ids = gridCommon.getSelectedRowIds();
	
	if(ids != ""){
		messageBox.setPropertyCaption("警告");
		messageBox.setPropertyContent("确定要删除该信息吗？");
					
		messageBox.show();
		messageBox.setOnClickListener(function(){
		
			if (ids.length == 0) {
			    alert("至少选择一个用户.");
				return ;
			}
			$.ajax({
				url : "managerCtrl/flowerType/"+ids, //后台处理程序
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
