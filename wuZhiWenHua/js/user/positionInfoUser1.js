var gridCommon;
$(function(){
	initGrid();
})

function initGrid(){
	$("#gbox_gridBox").remove();
	$("#gridPreDiv").after("<table id='gridBox'></table><div id='gridBoxPage'></div>");
	gridCommon = null;
	gridCommon = new jqgrid();
	var paramJson = {};
//	paramJson.userName =userName;
//	paramJson.describe =$("#userName").val();
	
	gridCommon.colNames     = ['序号', '企业单位名称','企业单位描述','企业单位电话', '企业单位地址','岗位名称', '岗位描述','岗位要求','岗位待遇','人数','操作'];	//列名	
	gridCommon.url          = "userMessage/listMyJobsAndGetJob";	//请求地址
	gridCommon.gridId       = "gridBox";				//表格加载div的id
	gridCommon.pageId       = "gridBoxPage";				//分页加载div的id
	gridCommon.paramJson    = paramJson;		        //查询传递参数
	gridCommon.autowidth    = true;			            //自动分配宽度
	gridCommon.height       =  "400px";				        //表格div的高度
	gridCommon.colModel     = [
				                {name:'index',	   			width:100,  editable:false, sortable:false, align:'center'},
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
				                {name:'option',				width:350, editable:false, sortable:false, align:'left'}
				                ];	//列参数
	gridCommon.setMultiSelect(false);       //全选功能
	gridCommon.setRowNum(10);
	gridCommon.isTitle = true;
	gridCommon.loadgrid();
	$(".ui-jqgrid-bdiv").css("background-color","white");
}

function updateListJob(rowId){
	var supportRoleinfo = {};
	var url = "userMessage/addMyJobs";
//	if (operType == "edit") { //编辑
//		supportRoleinfo._method='put';
//		supportRoleinfo.userId = rowId;
//	}
	var companyName 	 = gridCommon.getCellsText(rowId, "userName");
    var userDescribe 	 = gridCommon.getCellsText(rowId, "userDescribe");
	supportRoleinfo.userName = userName;
	supportRoleinfo.companyName = companyName;
//	supportRoleinfo.userDescribe = $("#userDesc").val();
//	supportRoleinfo.address = $("#address").val();
//	supportRoleinfo.telphone = $("#telphone").val();
//	supportRoleinfo.userPassword = $("#userPwd").val();
	
	$.ajax( {
		url : url, //后台处理程序
		type : 'post', //数据发送方式
		dataType : "json",
		data : supportRoleinfo, //要传递的数据；就是上面序列化的值
		success : function(data) { //回传函数
			if (data.code == 1) {
				alert("简历已投,请耐心等待面试邀请.");
				var url=basePath+"jsp/user/model/tuiJianJobs.jsp";
	
				modalUtil.setModalWidth(1200);
				modalUtil.setModalHeight(550);
				modalUtil.setHeaderText("推荐岗位")
				modalUtil.setBodyUrl(url);
						
				modalUtil.show();
						
				modalUtil.setClickListener();
			} else {
				alertDialog.open( {
					container : 'alertBox',
					text : data.error
				});
			}
		}
	});
}

function listLiuYan(id){
	 var companyName = gridCommon.getCellsText(id, "userName");
	 J.dialog.get({
        	 id: 'haoyue_creat',
        	 title: '留言',
        	 width: 780,
        	 height:520, 
        	 link: basePath+'jsp/user/discussDialog.jsp?companyName='+companyName+"&userName="+userName, cover:true
     });
}








