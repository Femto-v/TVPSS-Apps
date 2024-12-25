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
    <div class="container grid bg-sky-600 justify-items-center gap-4 rounded ">
        <div class="logo size-72">
			<c:url value="/resources/image/jpnj.png" var="logoPath" />
            <img src="${logoPath}" alt="Logo" class="">

        </div>
        <h1 class="font-bold text-4xl">TVPSS</h1>
        <h4>Welcome to our system</h4>
        <form action="dashboard" method="get" class="grid place-items-center">
    		<input type="email" class="p-1 text-xs" name="email" placeholder="Enter email" required> <br>
    		<input type="password" class="p-1 text-xs" name="password" placeholder="Enter password" required> <br>
    		<button type="submit" class="px-3 py-1 bg-sky-400 rounded ">Login</button>
		</form>
    </div>
</body>
</html>