<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crew</title>
    <style><%@include file="/resources/style/schoolStyle/crew-manage.css"%></style>
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
        <form action="crew" method="get">
            <button type="submit" class="button button1"><img src="<c:url value='/resources/image/crew.png' />" alt="home logo" class="home"> Crew <img src="<c:url value='/resources/image/arrow.png' />" alt="" class="arrow"></button> <br>
        </form>
        <form action="program" method="get">
            <button type="submit" class="button button2"><img src="<c:url value='/resources/image/program.png' />" alt="" class="library"> Program <img src="<c:url value='/resources/image/arrow.png' />" alt="" class="arrow"></button> <br>
        </form>
        <form action="librarySchool" method="get">
            <button type="submit" class="button button3"><img src="<c:url value='/resources/image/library.png' />" alt="" class="report">Content Library <img src="<c:url value='/resources/image/arrow.png' />" alt="" class="arrow"></button> <br>
        </form>
        <form action="studio" method="get">
            <button type="submit" class="button button4"><img src="<c:url value='/resources/image/studio.png' />" alt="" class="report">Studio<img src="<c:url value='/resources/image/arrow.png' />" alt="" class="arrow"></button> <br>
        </form>
        <form action="loginSchool" method="get">
            <button type="submit"  class="button button5"><img src="<c:url value='/resources/image/logout.png' />" alt="" class="logout"> Logout <img src="<c:url value='/resources/image/arrow.png' />" alt="" class="arrow"></button>
        </form>
    </div>

    <div class="content">
        <div class="container">
            <div class="box">
                <img src="<c:url value='/resources/image/crewAvatar.png' />" alt="" class="crew-logo">
                <div class="personalInfo">
                    <h3>***</h3>
                    <h3>***</h3>
                </div>
                <h3>Crew Name</h3>
                <form action="crew" method="post">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required><br>

                    <h3>Crew Id</h3>
                    <label for="studentId">Student ID:</label>
                    <input type="text" id="studentId" name="studentId" required><br>

                    <h3>Crew Role</h3>
                    <label for="role">Role:</label>
                    <input type="text" id="role" name="role" required><br>

                    <h3>Crew Status</h3>
                    <label for="taskStatus">Task Status:</label>
                    <select id="taskStatus" name="taskStatus" required>
                        <option value="incomplete">Incomplete</option>
                        <option value="complete">Complete</option>
                        <option value="onGoing">On Going</option>
                    </select>
                    <div class="buttons">
                        <button class="view">Save</button>
                    </form>
                    <form action="crew" method="get">
                        <button class="view1">Cancel</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>