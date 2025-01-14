<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crew</title>
    <style><%@include file="/resources/style/systemStyle/userManage.css"%></style>
</head>
<body>
    <div class="header">
        <h1>Crew Profile</h1>
        <div class="icon-container">
            <img src="<c:url value='/resources/image/notif.png' />" alt="Notification Icon" class="notif">
            <img src="<c:url value='/resources/image/inbox.png' />" alt="Inbox Icon" class="inbox">
            <img src="<c:url value='/resources/image/avatar.png' />" alt="Avatar Icon" class="avatar">
        </div>
    </div>

    <div class="sidebar">
        <div class="logo">
            <img src="<c:url value='/resources/image/kk.png' />" alt="ministry logo"> <br>
        </div>
        <form action="user" method="get">
            <button type="submit" class="button button1"><img src="<c:url value='/resources/image/crew.png' />" alt="home logo" class="home"> User <img src="../image/arrow.png" alt="" class="arrow"></button> <br>
        </form>
    </div>

    <div class="content">
        <div class="container">
            <div class="box">
                <img src="<c:url value='/image/crewAvatar.png' />" alt="" class="crew-logo">
                <div class="personalInfo">
                </div>
                <h3>Name</h3>
                <form action="roles">
                    <label for="crew-roles"></label>
                    <input type="text" class="name">
                </form>
                <h3>Email</h3>
                <form action="roles-task">
                    <label for="crew-task"></label>
                    <input type="text" class="task">
                </form>
                <h3>Roles</h3>
                <form action="roles">
                    <label for="crew-status"></label>
                    <select name="status" id="status">
                        <option value="system">System Admin</option>
                        <option value="admin">Admin</option>
                        <option value="teacher">Teacher</option>
                        <option value="student">Student</option>
                    </select>
                </form>
                <div class="buttons">
                    <form action="successSystem" method="get">
                        <button class="view">Save</button>
                    </form>
                    <form action="user" method="get">
                        <button class="view1">Cancel</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>