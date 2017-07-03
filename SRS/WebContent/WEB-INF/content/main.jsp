<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>main</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>

	<script>
	function addTab(title,url){
		if ($('#tab').tabs('exists', title)){
			$('#tab').tabs('select', title);
		} else {
			var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
			$('#tab').tabs('add',{
				title:title,
				content:content,
				closable:true
			});
		}
	}
	</script>
	
</head>
<body id="cc" class="easyui-layout">   
    <div data-options="region:'north'" style="height:60px;text-align: center;font-size: 15px;">
		<div>选课系统</div>
		<div style="text-align: right">${sessionScope.student.name}</div>
		
    </div> 
    <div data-options="region:'west',title:'菜单栏'" style="width:150px;">
    
    	<ul id="tree" class="easyui-tree">   
	       <li>    
	           <span><a href="#" onclick="addTab('学生选课','section')">学生选课</a></span>   
	       </li>   
	       <li>   
	           <span><a href="#" onclick="addTab('成绩查询','transcript')">成绩查询</a></span>   
	       </li>
	       <li>
	       	   <span><a href='#' onclick="addTab('课程管理','courseManager')">课程管理</a></span>
	       </li>  
	       <li>
	       	   <span><a href='#' onclick="addTab('教师管理','professorManager')">教师管理</a></span>
	       </li>  
		</ul>
    </div>   
    <div data-options="region:'center',title:false">
    	<div id="tab" class="easyui-tabs" data-options="fit:true,border:false">   

		</div>
    </div>
</body>
</html>