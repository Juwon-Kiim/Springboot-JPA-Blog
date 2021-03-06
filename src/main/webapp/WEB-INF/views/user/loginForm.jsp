<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


<div class="container">
	<h2>로그인 폼</h2>
	<form action="/auth/loginProc" method="post">
		<div class="form-group">
			<label for="username">Username</label> 
			<input type="text" class="form-control" id="username" placeholder="Enter Username" name="username">
		</div>
		<div class="form-group">
			<label for="password">Password</label> 
			<input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
		</div>
		<div class="form-group form-check">
			<label class="form-check-label"> 
			<input class="form-check-input" type="checkbox" name="remember"> Remember me
			</label>
		</div>
		<button id="btn-login" class="btn btn-primary">로그인</button>
		<a href="https://kauth.kakao.com/oauth/authorize?client_id=1033bc72c3024a3e1e7aba3ec504eaff&redirect_uri=http://localhost:8000/auth/kakao/callback&response_type=code"><img src="/image/kakao_login_button.png" height=38></a>
	</form>
</div>

<%@ include file="../layout/footer.jsp"%>