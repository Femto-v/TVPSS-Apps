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
<body class="grid place-content-center bg-sky-200 text-base">
    <div class="container grid bg-sky-600 justify-items-center gap-4 rounded text-white">
        <div class="logo size-72">
            <img src="<c:url value='/resources/image/jpnj.png' />" alt="jpnj logo">
        </div>
        <h1 class="font-extrabold text-4xl">TVPSS</h1>
        <h4>Welcome to our system</h4>
        <form action="perform_login" method="post" class="grid place-items-center">
    		<input type="email" class="text-black p-2 text-xs rounded border border-black" name="email" placeholder="Enter email" required> <br>
    		<input type="password" class="text-black p-2 text-xs rounded border border-black" name="password" placeholder="Enter password" required> <br>
    		<button type="submit" class="px-3 py-1 bg-sky-400 rounded font-semibold">Login</button>
		</form>
    </div>
</body>
</html>