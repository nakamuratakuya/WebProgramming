<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>informationUpdate</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/origin/color.css">
<link rel="stylesheet" type="text/css" href="css/origin/h1.css">
</head>
<body>
	<div class="container">
		<div class="username-area">
			<p align="right">
				 ${sessionScope.userInfo.loginId} san
				 <span style="margin-right: 12em;"></span>
				 <a href="LogoutServlet" class="alert-link">ログアウト</a>
		</div>

		<div class="tyuo-area">
			<h1>information Update</h1>
		</div>

		<div class="tyuo-area">

				<div class="dekaimoji">
					<div class="background-success">
						user ID<span style="margin-right: 7em;"></span> ${user.loginId}
					</div>
				</div>


			<!-- --form-- -->
			<form action="InformationUpdateServlet"method="post">
			<div class="mini-yohaku-area"></div>
			<div class="input-group input-group-sm mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" id="inputGroup-sizing-sm">password</span>
				</div>
				<input type="password" name="password1" class="form-control" aria-label="Small"
					aria-describedby="inputGroup-sizing-sm">
			</div>

			<div class="yohaku10-area"></div>
			<div class="input-group input-group-sm mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" id="inputGroup-sizing-sm">password(re-enter)</span>
				</div>
				<input type="password"  name="password2" class="form-control" aria-label="Small"
					aria-describedby="inputGroup-sizing-sm">
			</div>

			<div class="yohaku10-area"></div>
			<div class="input-group input-group-sm mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" id="inputGroup-sizing-sm">user
						name</span>
				</div>
				<input type="text" value="${user.name}"class="form-control" aria-label="Small"
					aria-describedby="inputGroup-sizing-sm">
			</div>

			<div class="yohaku10-area"></div>
			<div class="input-group input-group-sm mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" id="inputGroup-sizing-sm">date
						of birth</span>
				</div>
				<input type="text" value="${user.birthDate}" class="form-control" aria-label="Small"
					aria-describedby="inputGroup-sizing-sm">
			</div>

			<div class="yohaku10-area"></div>
			<input type="submit" class="btn btn-primary" value="update">
			</form>

			<p align="left">
				<a
					href="UserListServlet">"戻る"
				</a>
			</p>

		</div>
	</div>
</body>
</html>