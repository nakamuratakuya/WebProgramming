<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>create user</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/origin/color.css">
</head>
<body>
	<div class="container">
		<div class="username-area">
			<p align="right">
				 ${sessionScope.userInfo.name}さん <span style="margin-right: 12em;"> </span> <a
					href="LogoutServlet">"log_out"
				</a>
			</p>
		</div>

		<h3 align="center">ユーザー新規登録</h3>

		<c:if test="${errMsg != null}">
				<div class="alert alert-danger" role="alert">${errMsg}</div>
			</c:if>

		<form method="post" action="CreateUserServlet">
			<p></p>

			<div class="input-group input-group-sm mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" id="inputGroup-sizing-sm">login
						ID</span>
				</div>
				<input type="text" name="login_id" required class="form-control" aria-label="Small"
					aria-describedby="inputGroup-sizing-sm">
			</div>


			<div class="input-group input-group-sm mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" id="inputGroup-sizing-sm">password</span>
				</div>
				<input type="password" name="password1" class="form-control" aria-label="Small"
					aria-describedby="inputGroup-sizing-sm">
			</div>

			<div class="input-group input-group-sm mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" id="inputGroup-sizing-sm">password(re-enter)</span>
				</div>
				<input type="password" name="password2" class="form-control" aria-label="Small"
					aria-describedby="inputGroup-sizing-sm">
			</div>


			<div class="input-group input-group-sm mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" id="inputGroup-sizing-sm">user
						name</span>
				</div>
				<input type="text" name="name" required class="form-control" aria-label="Small"
					aria-describedby="inputGroup-sizing-sm">
			</div>

			<div class="input-group input-group-sm mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" id="inputGroup-sizing-sm">date
						of birth</span>
				</div>
				<input type="date" name="birthdate" required class="form-control" >
			</div>


			<p align="center">
				<input type="submit" class="btn btn-primary" value="登録">
			</p>
		</form>
		<a
			href="UserListServlet">"戻る"
		</a>
	</div>
</body>
</html>