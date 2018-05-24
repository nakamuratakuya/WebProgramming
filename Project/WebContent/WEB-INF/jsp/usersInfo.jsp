<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users info</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/origin/color.css">
<link rel="stylesheet" type="text/css" href="css/origin/h1.css">
</head>
<body>
	<div class="container">

		<div class="alert alert-primary" role="alert">

			<p align="right">
				 ${sessionScope.userInfo.loginId} san<a
					href="LogoutServlet"
					class="alert-link"><span style="margin-right: 12em;"></span>ログアウト</a>
			<h1 align="center">user information</h1>

			<div>
				<h4 style="float: left;">userID</h4>
				<h4 style="text-align: center">${user.loginId}</h4>
			</div>
			<div style="clear: both;"></div>

			<div>
				<h4 style="float: left;">username</h4>
				<h4 style="text-align: center">${user.name}</h4>
			</div>
			<div style="clear: both;"></div>

			<div>
				<h4 style="float: left;">date of birth</h4>
				<h4 style="text-align: center;">${user.birthDate}</h4>
			</div>
			<div style="clear: both;"></div>

			<div>
				<h4 style="float: left;">登録日時</h4>
				<h4 style="text-align: center;">${user.createDate}</h4>
			</div>
			<div style="clear: both;"></div>

			<div>
				<h4 style="float: left;">更新日時</h4>
				<h4 style="text-align: center;">${user.updateDate}</h4>
			</div>
			<div style="clear: both;"></div>
			<a
				href="UserListServlet">"戻る"
			</a>
		</div>

	</div>
</body>
</html>