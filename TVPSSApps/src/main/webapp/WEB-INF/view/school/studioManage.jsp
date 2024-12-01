<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Studio</title>
    <style><%@include file="/resources/style/schoolStyle/studio-manage.css"%></style>
</head>
<body>
    <div class="header">
        <h1>Studio</h1>
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
                <img src="../image/insert-logo.png" alt="" class="crew-logo">
                <h3>Brand Name</h3>
                <form action="">
                    <label for="brand"></label>
                    <input type="text" placeholder="input name.." class="brand">
                </form>
                <h3>School Name</h3>
                <form action="">
                    <label for="brand"></label>
                    <input type="text" placeholder="input name.." class="brand">
                </form>
                <h3>School Address</h3>
                <form action="">
                    <label for="brand"></label>
                    <input type="text" placeholder="input address.." class="brand">
                </form>
                <div class="">
                    <form action="studioEquipment" method="get">
                        <button class="add"><img src="../image/upload.png" alt="" class="upload"> Update Equipment</button>
                    </form>
                </div>
                <table>
                    <thead>
                        <tr>
                            <th>Equipment</th>
                            <th>Quantity</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Smartphone</td>
                            <td>11</td>
                        </tr>
                        <tr>
                            <td>Clip-On Microphone</td>
                            <td>12</td>
                        </tr>
                        <tr>
                            <td>Monopod</td>
                            <td>9</td>
                        </tr>
                    </tbody>
                </table>
                <div class="buttons">
                    <form action="successSchool" method="get">
                        <button class="view">Upload</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>