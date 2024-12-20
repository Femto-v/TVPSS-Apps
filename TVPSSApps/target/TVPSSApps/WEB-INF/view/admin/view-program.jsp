<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>School Management</title>
    <style><%@include file="/resources/style/adminStyle/viewProgram.css"%></style>
</head>
<body>
    <div class="header">
        <h1>School Management</h1>
        <div class="icon-container">
            <img src="/resources/image/notif.png" alt="Notification Icon" class="notif">
            <img src="/resources/image/inbox.png" alt="Inbox Icon" class="inbox">
            <img src="/resources/image/avatar.png" alt="Avatar Icon" class="avatar">
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
                <img src="/resources/image/logo.png" alt="" class="school-logo">
                <h3>Coordinator</h3>
                <h3 class="schools">Zainal Ariffin bin Mohamad</h3>
                <h3>Facilitator</h3>
                <h3 class="schools">Sekolah Menengah Kebangsaan Taman Nusari</h3>
                <h3>School Name</h3>
                <h3 class="school">Sekolah Menengah Kebangsaan Taman Nusari</h3>
                <h3>School Address</h3>
                <h3 class="school">Jalan Nusari 1, Taman Nusari, 81000 Kulai, Johor</h3>
                <h3>School Program</h3>
                <h3 class="school">Insight Journalism Club: Students create videos on scientific experiments, explaining various concepts in a way that’s both educational and engaging for young audiences.</h3>
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
                    <form action="">
                        <button class="view">Generate Report</button>
                    </form>
                    <form action="report" method="get">
                        <button class="view1">Cancel</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>