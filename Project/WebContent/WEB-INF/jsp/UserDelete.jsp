<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>user Delete</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/origin/color.css">
<link rel="stylesheet" type="text/css" href="css/origin/h1.css">
</head>
<body>
	<div class="container">

		<!-- 111111 -->
		<div class="username-area">
			<p align="right">
				  ${sessionScope.userInfo.loginId}  san<a
					href="LogoutServlet"
					class="alert-link"><span style="margin-right: 12em;"></span>ログアウト</a>
		</div>

		<!-- 222222 -->
		<div class="background-denger">
			<h1 align="center">user Delete</h1>


			<h3>username: ${user.loginId}</h3>
			<h3>をほんとに削除してよろしいでしょうか。</h3>

			<div class="dekaiyohaku">
				<div class="tyuo-area">
						<div style="display:inline-flex">

						<form action="DeleteServlet" method="post">
							<input class="btn btn-primary" type="hidden" name="id"
								value="${user.id}"> <input class="btn btn-primary"
								type="submit" value="yes!">
						</form>

						<span style="margin-right: 7em;"></span>

						<form action="">
							<a class="btn btn-success" href="UserListServlet" role="button">back</a>
						</form>
						</div>

				</div>
				<p align="left">
						<a href="UserListServlet">"戻る" </a>

			</div>
		</div>
	</div>
</body>
</html>