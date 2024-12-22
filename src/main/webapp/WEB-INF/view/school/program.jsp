<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Program Details</title>
    <style><%@include file="/resources/style/schoolStyle/program.css"%></style>
</head>
<body>
    <div class="header">
        <h1>Program Details</h1>
        <form action="" class="search-container">
            <img src="../image/menu.png" alt="Menu Icon" class="menu">
            <input type="search" placeholder="Search">
            <img src="../image/search.png" alt="Search Icon" class="search">
        </form>
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
        <form action="programManage" method="get">
            <button class="view">+ Add User</button>
        </form>
        <table>
            <thead>
                <tr>
                    <th>No</th>
                    <th>Program</th>
                    <th>Status</th>
                    <th>View</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>"Science in Action" Experiment Demonstrations</td>
                    <form action="">
                        <td><button id="complete" class="view">Complete</button></td>
                    </form>
                    <form action="programView" method="get">
                        <td><button class="view">Open</button></td>
                    </form>    
                </tr>
                <tr>
                    <td>2</td>
                    <td>"Know Your Roots" Cultural Heritage Series</td>
                    <form action="">
                        <td><button id="complete" class="view">Complete</button></td>
                    </form>
                    <form action="programView" method="get">
                        <td><button class="view">Open</button></td>
                    </form> 
                </tr>
                <tr>
                    <td>3</td>
                    <td>"School Innovators" Student Project Showcase</td>
                    <form action="">
                        <td><button id="complete" class="view">Complete</button></td>
                    </form>
                    <form action="programView" method="get">
                        <td><button class="view">Open</button></td>
                    </form> 
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>