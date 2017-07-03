<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会员登陆</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/3.1.0/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
	body{
		background-repeat:no-repeat;
		background-size:cover;
	}
	.content{
		background-color:lightblue;
		width:20em;
		padding:3em 3em;
		margin: 5em auto;
	}
</style>
</head>
<body>

<div class="container">
<div class="content">
	<form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/studentLogin">
		<div class="form-group lead text-center">
			会员登陆
		</div>
		<div class="form-group text-center">
			${param.msg}
		</div>
		<div class="form-group">
			<div class="col-sm-12">
				<input type="text" class="form-control" name="ssn" placeholder="用户名">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-12">
				<input type="password"  class="form-control" name="password" placeholder="密码">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-12">
				<input type="submit" class="col-sm-4 btn btn-default" value="登陆">
			</div>
		</div>
	</form>
</div>	
</div>

</body>
</html>