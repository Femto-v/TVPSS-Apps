<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crew</title>
    <style><%@include file="/resources/style/systemStyle/success.css"%></style>
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
            <img src="../image/kk.png" alt="ministry logo"> <br>
        </div>
        <form action="user" method="get">
            <button type="submit" class="button button1"><img src="../image/crew.png" alt="home logo" class="home"> User <img src="../image/arrow.png" alt="" class="arrow"></button> <br>
        </form>
    </div>

    <div class="content">
        <div class="container">
            <div class="box">
                <h3>Save Successful</h3>
                <div class="buttons">
                    <form action="user" method="get">
                        <button class="view">Done</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>