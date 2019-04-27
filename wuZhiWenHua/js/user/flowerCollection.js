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
	var userName = $("#userName").val();
 	paramJson.userName =userName;
	//paramJson.flowerType = flowerType;
 	
	gridCommon.colNames     = ['序号', '鲜花编号','鲜花名称','鲜花描述', '鲜花详情','鲜花型号','鲜花颜色','鲜花价格','鲜花数量'];	//列名	
	gridCommon.url          = "userMessage/collectFlower";	//请求地址
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
				                {name:'flowersSize',	width:200, editable:false, sortable:false, align:'left'},
				                {name:'flowersColor',	width:200, editable:false, sortable:false, align:'left'},
				                {name:'flowersPrice',	width:200, editable:false, sortable:false, align:'left'},
				                {name:'flowersNum',		width:200, editable:false, sortable:false, align:'left'}
				               ];	//列参数
	gridCommon.setMultiSelect(true);       //全选功能
	gridCommon.setRowNum(30000);
	gridCommon.loadgrid();
}

//按条件搜素
function onSearch(){
	initGrid();
}

function onDelete(){
	var ids = gridCommon.getSelectedRowIds();
	
	if(ids != ""){
		messageBox.setPropertyCaption("警告");
		messageBox.setPropertyContent("确定要删除该信息吗？");
					
		messageBox.show();
		messageBox.setOnClickListener(function(){
		
			if (ids.length == 0) {
			    alert("至少选择一条记录.");
				return ;
			}
			$.ajax({
				url : "userMessage/collectFlower/"+ids, //后台处理程序
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