<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>content Library</title>
    <style><%@include file="/resources/style/adminStyle/video.css"%></style>
</head>
<body>
    <div class="header">
        <h1>Content Library</h1>
        <div class="icon-container">
            <form action="">
                <a href=""><img src="<c:url value='/resources/image/notif.png' />" alt="Notification Icon" class="notif"></a>
            </form>
            <form action="">
                <a href=""><img src="<c:url value='/resources/image/inbox.png' />" alt="Inbox Icon" class="inbox"></a>
            </form>
            <form action="">
                <a href=""><img src="<c:url value='/resources/image/avatar.png' />" alt="Avatar Icon" class="avatar"></a>
            </form>
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
                <form action="" class="search-container">
                    <img src="<c:url value='/resources/image/menu.png' />" alt="Menu Icon" class="menu">
                    <input type="search" placeholder="Search">
                    <img src="<c:url value='/resources/image/search.png' />" alt="Search Icon" class="search">
                </form>
                <form action="library-uploaded" method="get">
                    <button class="add"><img src="<c:url value='/resources/image/upload.png' />" alt="" class="upload"> Add New Content</button>
                </form>
            </div>
            <div class="box">
                <div class="filters">
                    <form action="library" method="get">
                        <button class="filter filter1">All</button>
                    </form>
                    <form action="library-video" method="get">
                        <button class="filter filter2">Video</button>
                    </form>
                    <form action="library-channel" method="get">
                        <button class="filter filter3">Channel</button>
                    </form>
                    <form action="library-live" method="get">
                        <button class="filter filter4">Live</button>
                    </form>
                    <form action="library-recently" method="get">
                        <button class="filter filter5">Recently Uploaded</button>
                    </form>
                </div>
                <div class="content-library">
                    <iframe width="380" height="200" src="https://www.youtube.com/embed/4gsUoLB1fdo?si=SSwBzLZDsNtO5psS" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                    <iframe width="380" height="200" src="https://www.youtube.com/embed/WU-VtzK1Hvo?si=taVDPL8hGYipoDex" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>
</body>
</html>