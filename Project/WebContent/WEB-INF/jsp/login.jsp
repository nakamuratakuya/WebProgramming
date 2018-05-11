<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login page</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/origin/color.css">
</head>
<body>
	<div class="container">
		<div class="login-area">
			<header>
				<p>ログイン画面</p>
			</header>

			<c:if test="${errMsg != null}">
				<div class="alert alert-danger" role="alert">${errMsg}</div>
			</c:if>

			<form action="LoginServlet" method="post">
				<p>
					ログインID：<input type="text" name="login_id">
				</p>
				<p>
					パスワード：<input type="password" name="password" id="inputPassword">
				</p>
				<p>
					<button class="btn btn-primary" type="submit">login</button>
				</p>
			</form>
		</div>
	</div>
</body>
</html>