<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User</title>
    <style><%@include file="/resources/style/systemStyle/user.css"%></style>
</head>
<body>
    <div class="header">
        <h1>Manage Role</h1>
        <form action="" class="search-container">
            <img src="<c:url value='/resources/image/menu.png' />" alt="menu2" class="menu">
            <input type="search" placeholder="Search">
            <img src="<c:url value='/resources/image/search.png' />" alt="Search Icon" class="search">
        </form>
        <div class="icon-container">
            <img src="<c:url value='/resources/image/notif.png' />" alt="Notification Icon" class="notif">
            <img src="<c:url value='/resources/image/inbox.png' />" alt="inbox" class="inbox">
            <img src="<c:url value='/resources/image/avatar.png' />" alt="Avatar Icon" class="avatar">
        </div>
    </div>

    <div class="sidebar">
        <div class="logo">
            <img src="<c:url value='/resources/image/kk.png' />" alt="ministry logo"> <br>
        </div>
        <form action="user" method="get">
            <button type="submit" class="button button1"><img src="<c:url value='/resources/image/home.png' />" alt="home logo" class="home"> User <img src="<c:url value='/resources/image/arrow.png' />" alt="arrow" class="arrow"></button> <br>
        </form>
    </div>

    <div class="content">
        <form action="userManage" method="get">
            <button class="view">+ Add User</button>
        </form>
        <table>
            <thead>
                <tr>
                    <th>No</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Roles</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${users}">
        <tr>
            <td><c:out value="${status.index + 1}" /></td>
            <td><c:out value="${user.firstName}" /> <c:out value="${user.lastName}" /></td>
            <td><c:out value="${user.email}" /></td>
            <td>
                <c:forEach var="authority" items="${user.authorities}">
                    <c:out value="${authority.authority}" />
                    <br/>
                </c:forEach>
            </td>
            <td>
                <form action="userManage" method="get">
                    <button class="view">Edit</button>
                </form>
            </td>
            <td>
                <form action="deleteUser" method="post">
                    <input type="hidden" name="email" value="${user.email}" />
                    <button class="view1" onclick="return confirm('Are you sure you want to delete this user?')">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
                <tr>
                    <td>1</td>
                    <td>Ahmad Hafiz bin Mohd Zain</td>
                    <td>ahmad@admin.tvpss.my</td>
                    <td>Admin</td>
                    <form action="userManage" method="get">
                        <td><button class="view">Edit</button></td>
                    </form>
                    <form action="">
                        <td><button class="view1">Delete</button></td>
                    </form>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Nurul Izzati binti Ahmad Farhan</td>
                    <td>nurul@teacher.tvpss.my</td>
                    <td>Teacher</td>
                    <form action="userManage" method="get">
                        <td><button class="view">Edit</button></td>
                    </form>
                    <form action="">
                        <td><button class="view1">Delete</button></td>
                    </form>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Mohd Syafiq bin Razak</td>
                    <td>syafiq@student.tvpss.my</td>
                    <td>Student</td>
                    <form action="userManage" method="get">
                        <td><button class="view">Edit</button></td>
                    </form>
                    <form action="">
                        <td><button class="view1">Delete</button></td>
                    </form>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Farah Nadia binti Azman</td>
                    <td>farah@teacher.tvpss.my</td>
                    <td>Teacher</td>
                    <form action="userManage" method="get">
                        <td><button class="view">Edit</button></td>
                    </form>
                    <form action="">
                        <td><button class="view1">Delete</button></td>
                    </form>
                </tr>
                <tr>
                    <td>5</td>
                    <td>Hafizul Hakim bin Ismail</td>
                    <td>hafizul@student.tvpss.my</td>
                    <td>Student</td>
                    <form action="userManage" method="get">
                        <td><button class="view">Edit</button></td>
                    </form>
                    <form action="">
                        <td><button class="view1">Delete</button></td>
                    </form>
                </tr>
                <tr>
                    <td>6</td>
                    <td>Aminah binti Saiful</td>
                    <td>aminah_admin@admin.tvpss.my</td>
                    <td>Admin</td>
                    <form action="userManage" method="get">
                        <td><button class="view">Edit</button></td>
                    </form>
                    <form action="">
                        <td><button class="view1">Delete</button></td>
                    </form>
                </tr>
                <tr>
                    <td>7</td>
                    <td>Zainal Ariffin bin Mohamad</td>
                    <td>zainal@teacher.tvpss.my</td>
                    <td>Teacher</td>
                    <form action="userManage" method="get">
                        <td><button class="view">Edit</button></td>
                    </form>
                    <form action="">
                        <td><button class="view1">Delete</button></td>
                    </form>
                </tr>
                <tr>
                    <td>8</td>
                    <td>Siti Aishah binti Abdullah</td>
                    <td>siti@student.tvpss.my</td>
                    <td>Student</td>
                    <form action="userManage" method="get">
                        <td><button class="view">Edit</button></td>
                    </form>
                    <form action="">
                        <td><button class="view1">Delete</button></td>
                    </form>
                </tr>
                <tr>
                    <td>9</td>
                    <td>Rashid bin Hassan</td>
                    <td>rashid@admin.tvpss.my</td>
                    <td>Admin</td>
                    <form action="userManage" method="get">
                        <td><button class="view">Edit</button></td>
                    </form>
                    <form action="">
                        <td><button class="view1">Delete</button></td>
                    </form>
                </tr>
                <tr>
                    <td>10</td>
                    <td>Jefri bin Nichole</td>
                    <td>jefri@tvpss.my</td>
                    <td>System Admin</td>
                    <form action="userManage" method="get">
                        <td><button class="view">Edit</button></td>
                    </form>
                    <form action="">
                        <td><button class="view1">Delete</button></td>
                    </form>
                </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>