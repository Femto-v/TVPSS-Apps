<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login TVPSS</title>
    <style><%@include file="/resources/style/adminStyle/login.css"%></style>
</head>
<body>
    <div class="container">
        <div class="logo">
			<img src="<c:url value='/resources/image/jpnj.png' />" alt="Logo">
        </div>
        <h1>TVPSS</h1>
        <h4>Welcome to our system</h4>
        <form action="crew" method="get">
            <input type="email" placeholder="Enter email"> <br>
            <input type="password" placeholder="Enter password"> <br>
            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>