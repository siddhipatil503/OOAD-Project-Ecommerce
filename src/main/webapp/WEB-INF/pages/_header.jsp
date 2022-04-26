<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="styles.css" type="text/css" href="${pageContext.request.contextPath}/styles.css">

<div class="header-container">

	<div class="site-name">Online Shop</div>
	<style>
body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.topnav a {
	float: left;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.topnav a.active {
	background-color: #04AA6D;
	color: white;
}

.header-bar {
	overflow: hidden;
	background-color: coral;
}
</style>

	<div class="header-bar">
		<c:if test="${pageContext.request.userPrincipal.name != null}">
        Hello
           <a href="${pageContext.request.contextPath}/accountInfo">
				${pageContext.request.userPrincipal.name} </a>
         &nbsp;|&nbsp;
           <a href="${pageContext.request.contextPath}/logout">Logout</a>

		</c:if>
		<c:if test="${pageContext.request.userPrincipal.name == null}">
			<a href="${pageContext.request.contextPath}/login">Login</a>
		</c:if>
	</div>
</div>