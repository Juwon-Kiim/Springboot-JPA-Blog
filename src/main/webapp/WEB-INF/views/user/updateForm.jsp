<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">
	<form>
		<input type="hidden" id="id" value="${principal.user.id }" />
		<div class="form-group">
			<label for="username">Username</label> <input type="text" value="${principal.user.username}" class="form-control" id="username" placeholder="Enter Username" readonly>
		</div>
		<c:if test="${empty principal.user.oauth}">
			<div class="form-group">
				<label for="password">Password</label> <input type="password" class="form-control" id="password" placeholder="Enter password">
			</div>
		</c:if>
		<div class="form-group">
			<label for="email">Email</label> <input type="email" value="${principal.user.email}" class="form-control" id="email" placeholder="Enter Email" readonly>
		</div>
	</form>
	<button id="btn-update" class="btn btn-primary">회원수정</button>
</div>
<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp"%>