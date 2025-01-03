<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crew</title>
    <link rel="stylesheet" href="../style/adminStyle/success.css">
</head>
<body>
    <div class="header">
        <div class="icon-container">
            <img src="../image/notif.png" alt="Notification Icon" class="notif">
            <img src="../image/inbox.png" alt="Inbox Icon" class="inbox">
            <img src="../image/avatar.png" alt="Avatar Icon" class="avatar">
        </div>
    </div>

    <div class="sidebar">
        <div class="logo">
            <img src="/resources/image/kk.png" alt="ministry logo"> <br>
        </div>
        <form action="dashboard" method="get">
            <button type="submit" class="button button1"><img src="/resources/image/home.png" alt="home logo" class="home"> Dashboard <img src="/resources/image/arrow.png" alt="" class="arrow"></button> <br>
        </form>
        <form action="library" method="get">
            <button type="submit" class="button button2"><img src="/resources/image/library.png" alt="" class="library"> Content Library <img src="/resources/image/arrow.png" alt="" class="arrow"></button> <br>
        </form>
        <form action="report" method="get">
            <button type="submit" class="button button3"><img src="/resources/image/report.png" alt="" class="report"> Report <img src="/resources/image/arrow.png" alt="" class="arrow"></button>
        </form>
        <form action="login" method="get">
            <button type="submit"  class="button button4"><img src="/resources/image/logout.png" alt="" class="logout"> Logout <img src="/resources/image/arrow.png" alt="" class="arrow"></button>
        </form>
    </div>

    <div class="content">
        <div class="container">
            <div class="box">
                <h3>Save Successful</h3>
                <div class="buttons">
                    <form action="dashboard" method="get">
                        <button class="view">Done</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>