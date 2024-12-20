<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>School Management</title>
    <style><%@include file="/resources/style/schoolStyle/equipment.css"%></style>
</head>
<body>
    <div class="header">
        <h1>School Management</h1>
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
                <h1>Update Equipment</h1>
                <div class="rows">
                    <div class="first-row">
                        <form action="">
                            <h3>Smartphone</h3>
                            <label for="smartphone"></label>
                            <input type="number">
                        </form>
                        <form action="">
                            <h3>Webcam</h3>
                            <label for="webcam"></label>
                            <input type="number">
                        </form>
                        <form action="">
                            <h3>Camera</h3>
                            <label for="camera"></label>
                            <input type="number">
                        </form>
                        <form action="">
                            <h3>Clip Microphone</h3>
                            <label for="clip-microphone"></label>
                            <input type="number">
                        </form>
                        <form action="">
                            <h3>Wireless Microphone</h3>
                            <label for="wireless-microphone"></label>
                            <input type="number">
                        </form>
                        <form action="">
                            <h3>Monopod</h3>
                            <label for="monopod"></label>
                            <input type="number">
                        </form>
                        <form action="">
                            <h3>Tripod</h3>
                            <label for="tripod"></label>
                            <input type="number">
                        </form>
                    </div>
                    <div class="second-row">
                        <form action="">
                            <h3>Ring Light</h3>
                            <label for="smartphone"></label>
                            <input type="number">
                        </form>
                        <form action="">
                            <h3>Mobile Lighting</h3>
                            <label for="webcam"></label>
                            <input type="number">
                        </form>
                        <form action="">
                            <h3>3 Point Lighting</h3>
                            <label for="camera"></label>
                            <input type="number">
                        </form>
                        <form action="">
                            <h3>Clip Mobile Green Screen Set</h3>
                            <label for="clip-microphone"></label>
                            <input type="number">
                        </form>
                        <form action="">
                            <h3>Green Screen</h3>
                            <label for="wireless-microphone"></label>
                            <input type="number">
                        </form>
                        <form action="">
                            <h3>Editing Software (Open Source)</h3>
                            <label for="monopod"></label>
                            <input type="number">
                        </form>
                        <form action="">
                            <h3>Editing Software (Pro/Paid Version)</h3>
                            <label for="tripod"></label>
                            <input type="number">
                        </form>
                    </div>
                </div>
                <div class="buttons">
                    <form action="successSchool" method="get">
                        <button class="view">Save</button>
                    </form>
                    <form action="studioManage" method="get">
                        <button class="view1">Cancel</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>