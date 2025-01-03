<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>content Library</title>
    <style><%@include file="/resources/style/adminStyle/upload.css"%></style>
</head>
<body>
    <div class="header">
        <h1>Content Library</h1>
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
        <form action="dashboard" method="get">
            <button type="submit" class="button button1"><img src="<c:url value='/resources/image/home.png' />" alt="home logo" class="home"> Dashboard <img src="<c:url value='/resources/image/arrow.png' />" alt="" class="arrow"></button> <br>
        </form>
        <form action="library" method="get">
            <button type="submit" class="button button2"><img src="<c:url value='/resources/image/library.png' />" alt="" class="library"> Content Library <img src="<c:url value='/resources/image/arrow.png' />" alt="" class="arrow"></button> <br>
        </form>
        <form action="report" method="get">
            <button type="submit" class="button button3"><img src="<c:url value='/resources/image/report.png' />" alt="" class="report"> Report <img src="<c:url value='/resources/image/arrow.png' />" alt="" class="arrow"></button>
        </form>
        <form action="login" method="get">
            <button type="submit"  class="button button4"><img src="<c:url value='/resources/image/logout.png' />" alt="" class="logout"> Logout <img src="<c:url value='/resources/image/arrow.png' />" alt="" class="arrow"></button>
        </form>
    </div>

    <div class="content">
        <div class="container">
            <div class="add-content">
            <div class="box">
                <div class="content-library">
                    <img src="<c:url value='/resources/image/uploads.png' />" alt="" class="live" class="upload-content">
                </div>
                <h4>Upload or Drag Content here</h4>
                <div class="insertion">
                    <form action="">
                        <h5>Title</h5>
                        <input type="text" placeholder="Insert Title..." class="title">
                        <h5>Description</h5>
                        <input type="text" placeholder="Insert Description.." class="desc">
                    </form>
                </div>
                        <div class="buttons">
                            <form action="">
                            <button class="view">Upload</button>
                            </form>
                            <form action="library" method="get">
                            <button class="view1">Cancel</button>
                            </form>
                        </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>