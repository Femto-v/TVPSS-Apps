<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>content Library</title>
    <style><%@include file="/resources/style/schoolStyle/upload.css"%></style>
</head>
<body>
    <div class="header">
        <h1>Content Library</h1>
        <div class="icon-container">
            <img src="/resources/image/notif.png" alt="Notification Icon" class="notif">
            <img src="/resources/image/inbox.png" alt="Inbox Icon" class="inbox">
            <img src="/resources/image/avatar.png" alt="Avatar Icon" class="avatar">
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
            <div class="box">
                <div class="content-library">
                    <img src="/resources/image/uploads.png" alt="" class="live" class="upload-content">
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
                            <form action="successSchool" method="get">
                            <button class="view">Upload</button>
                            </form>
                            <form action="librarySchool" method="get">
                            <button class="view1">Cancel</button>
                            </form>
                        </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>