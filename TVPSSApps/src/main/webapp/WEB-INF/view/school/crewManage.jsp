<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <img src="../image/notif.png" alt="Notification Icon" class="notif">
            <img src="../image/inbox.png" alt="Inbox Icon" class="inbox">
            <img src="../image/avatar.png" alt="Avatar Icon" class="avatar">
        </div>
    </div>

    <div class="sidebar">
        <div class="logo">
            <img src="../image/kk.png" alt="ministry logo"> <br>
        </div>
        <form action="crew" method="get">
            <button type="submit" class="button button1"><img src="../image/crew.png" alt="home logo" class="home"> Crew <img src="../image/arrow.png" alt="" class="arrow"></button> <br>
        </form>
        <form action="program" method="get">
            <button type="submit" class="button button2"><img src="../image/program.png" alt="" class="library"> Program <img src="../image/arrow.png" alt="" class="arrow"></button> <br>
        </form>
        <form action="librarySchool" method="get">
            <button type="submit" class="button button3"><img src="../image/library.png" alt="" class="report">Content Library <img src="../image/arrow.png" alt="" class="arrow"></button> <br>
        </form>
        <form action="studio" method="get">
            <button type="submit" class="button button4"><img src="../image/studio.png" alt="" class="report">Studio<img src="../image/arrow.png" alt="" class="arrow"></button> <br>
        </form>
        <form action="loginSchool" method="get">
            <button type="submit"  class="button button5"><img src="../image/logout.png" alt="" class="logout"> Logout <img src="../image/arrow.png" alt="" class="arrow"></button>
        </form>
    </div>

    <div class="content">
        <div class="container">
            <div class="box">
                <img src="../image/crewAvatar.png" alt="" class="crew-logo">
                <div class="personalInfo">
                    <h3>Mohd Faizal bin Abdullah</h3>
                    <h3>STU20230104</h3>
                </div>
                <h3>Crew Roles</h3>
                <form action="roles">
                    <label for="crew-roles"></label>
                    <input type="text">
                </form>
                <h3>Task</h3>
                <form action="roles-task">
                    <label for="crew-task"></label>
                    <input type="text" class="task">
                </form>
                <h3>Status</h3>
                <form action="roles">
                    <label for="crew-status"></label>
                    <select name="status" id="status">
                        <option value="incomplete">Incomplete</option>
                        <option value="complete">Complete</option>
                        <option value="onGoing">On Going</option>
                    </select>
                </form>
                <div class="buttons">
                    <form action="successSchool" method="get">
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