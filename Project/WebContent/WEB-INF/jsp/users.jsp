<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang= "ja">
<head>
<meta charset="UTF-8">
<title>users</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/origin/h1.css">
</head>
<body>
	<div class="container">
		<p align="right">
		<div class="alert alert-primary" role="alert">
			<p align="right">
				user san ${userInfo.name}
				<span style="margin-right: 12em;"></span>
				<a
					href="LogoutServlet"
					class="alert-link">ログアウト</a>
			</p>
		</div>
		<h1 align="center">user ictiran</h1>
		<p align="right">

			<!-- ボタン -->
			<a class="btn btn-danger"
				href="CreateUserServlet"
				role="button">sinkitouroku</a>
		</p>
			<!-- /ボタン -->

		<div class="input-group input-group-sm mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm">login ID</span>
			</div>
			<input type="text" class="form-control" aria-label="Small"
				aria-describedby="inputGroup-sizing-sm">
		</div>

		<div class="yohaku10-area"></div>

		<div class="input-group input-group-sm mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm">user
					name</span>
			</div>
			<input type="text" class="form-control" aria-label="Small"
				aria-describedby="inputGroup-sizing-sm">
		</div>

		<p>date of birth</p>
		<div class="row">
			<div class="col">
				<input type="date" class="form-control" placeholder="date of birth">
			</div>
			～
			<div class="col">
				<input type="date" class="form-control" placeholder="date of birth">
			</div>
		</div>

		<div class="yohaku10-area"></div>

		<p align="right">
			<button type="button" class="btn btn-secondary">kensaku</button>
		</p>

		<!-- テーーーーブル -->
		<table class="table table-striped table-dark">
			<thead>
				<tr>
					<th scope="col">loginID</th>
					<th scope="col">username</th>
					<th scope="col">date of birth</th>
					<th scope="col"></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>ちっぴーせんせい</td>
					<td>04/26/1989</td>
					<td><a class="btn btn-primary"href="file:///C:/Users/gunka/Documents/WebProgramming/Mock/usersInfo.jsp"
						role="button">info</a>
						<a class="btn btn-success"href="file:///C:/Users/gunka/Documents/WebProgramming/Mock/informationUpdate.html"
						role="button">update</a>
						<a class="btn btn-danger"href="file:///C:/Users/gunka/Documents/WebProgramming/Project/WebContent/WEB-INF/jsp/chippi-Delete.jsp"
						role="button">delete</a>
					</td>
				</tr>
				<c:forEach var="user" items="${userList}" >
				<tr>
					<th>${user.loginId}</th>
					<td>${user.name}</td>
					<td>${user.birthDate}</td>
					<td>
						<a class="btn btn-primary" href="#" role="button">info</a>
						<a class="btn btn-success" href="#" role="button">update</a>
						<a class="btn btn-danger" href="DeleteServlet?id=${user.id}" role="button">delete</a>
						 <!-- TODO 未実装；ログインボタンの表示制御を行う -->
					</td>
				</tr>
				</c:forEach>
				<tr>
					<th scope="row">3</th>
					<td>Larry</td>
					<td>08/16/1963</td>
					<td><a class="btn btn-primary" href="#" role="button">info</a>
						<a class="btn btn-success" href="#" role="button">kousin</a>
						<a class="btn btn-danger" href="#" role="button">kesu</a></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>