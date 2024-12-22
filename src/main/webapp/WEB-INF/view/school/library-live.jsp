<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>content Library</title>
    <style><%@include file="/resources/style/schoolStyle/live.css"%></style>
</head>
<body>
    <div class="header">
        <h1>Content Library</h1>
        <div class="icon-container">
            <form action="">
                <a href=""><img src="/resources/image/notif.png" alt="Notification Icon" class="notif"></a>
            </form>
            <form action="">
                <a href=""><img src="/resources/image/inbox.png" alt="Inbox Icon" class="inbox"></a>
            </form>
            <form action="">
                <a href=""><img src="/resources/image/avatar.png" alt="Avatar Icon" class="avatar"></a>
            </form>
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
            <div class="add-content">
                <form action="" class="search-container">
                    <img src="/resources/image/menu.png" alt="Menu Icon" class="menu">
                    <input type="search" placeholder="Search">
                    <img src="/resources/image/search.png" alt="Search Icon" class="search">
                </form>
                <form action="library-uploadedSchool" method="get">
                    <button class="add"><img src="/resources/image/upload.png" alt="" class="upload"> Add New Content</button>
                </form>
            </div>
            <div class="box">
                <div class="filters">
                    <form action="library" method="get">
                        <button class="filter filter1">All</button>
                    </form>
                    <form action="library-videoSchool" method="get">
                        <button class="filter filter2">Video</button>
                    </form>
                    <form action="library-channelSchool" method="get">
                        <button class="filter filter3">Channel</button>
                    </form>
                    <form action="library-liveSchool" method="get">
                        <button class="filter filter4">Live</button>
                    </form>
                    <form action="library-recentlySchool" method="get">
                        <button class="filter filter5">Recently Uploaded</button>
                    </form>
                </div>
                <div class="content-library">
                    <img src="/resources/image/live.png" alt="" class="live">
                </div>
            </div>
        </div>
    </div>
</body>
</html>