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
			<img src="<c:url value='/resources/image/jpnj.png' />" alt="jpnj logo">
        </div>
        <h1 class="font-extrabold text-4xl">TVPSS</h1>
          <form action="register" method="post" class="grid place-items-center text-black l-40 gap-1">
               <input type="text" class="text-black p-2 text-xs rounded border border-black" id="firstName"  name="firstName" placeholder="Enter first name" required>
               <input type="text" class="text-black p-2 text-xs rounded border border-black" id="lastName" name="lastName" placeholder="Enter last name" required> 
               <input type="email" class="text-black p-2 text-xs rounded border border-black" id="email" name="email" placeholder="Enter email" required> 
               <input type="password" class="text-black p-2 text-xs rounded border border-black" id="password" name="password" placeholder="Enter password" required><br>
               <select id="role" name="role" class="text-black p-2 text-xs rounded border border-black" required>
                <option value="ROLE_TEAM">Team</option>
                <option value="ROLE_ADMIN">Admin</option>
                <option value="ROLE_SCHOOL">School</option>
            </select>
               <button type="submit" class="px-3 py-1 bg-sky-400 rounded font-semibold text-white">Signup</button>
          </form>
    </div>
</body>
</html>