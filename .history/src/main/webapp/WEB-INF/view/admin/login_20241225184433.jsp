<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login TVPSS</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <%-- <style><%@include file="/resources/style/adminStyle/login.css"%></style> --%>
</head>
<body>
    <div class="container">
        <div class="logo">
			<c:url value="/resources/image/jpnj.png" var="logoPath" />
            <img src="${logoPath}" alt="Logo" class>

        </div>
        <h1>TVPSS</h1>
        <h4>Welcome to our system</h4>
        <form action="dashboard" method="get">
    		<input type="email" name="email" placeholder="Enter email" required> <br>
    		<input type="password" name="password" placeholder="Enter password" required> <br>
    		<button type="submit">Login</button>
		</form>
    </div>
</body>
</html>