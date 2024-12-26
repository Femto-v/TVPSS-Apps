<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login TVPSS</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="grid place-content-center bg-sky-200 text-base h-screen">
    <div class="container grid bg-sky-600 justify-items-center gap-4 rounded text-white">
        <div class="logo size-72">
			<c:url value="/resources/image/jpnj.png" var="logoPath" />
            <img src="${logoPath}" alt="Logo" class="">

        </div>
        <h1 class="font-extrabold text-4xl">TVPSS</h1>
          <form action="dashboard" method="get" class="grid place-items-center text-black l-40 gap-1">
               <input type="text" class="text-black p-2 text-xs rounded border border-black" name="firstName" placeholder="Enter first name" required>
               <input type="text" class="text-black p-2 text-xs rounded border border-black" name="lastName" placeholder="Enter last name" required> 
               <input type="email" class="text-black p-2 text-xs rounded border border-black" name="email" placeholder="Enter email" required> 
               <input type="password" class="text-black p-2 text-xs rounded border border-black" name="password" placeholder="Enter password" required><br>
               <button type="submit" class="px-3 py-1 bg-sky-400 rounded font-semibold text-white">Signup</button>
          </form>
    </div>
</body>
</html>