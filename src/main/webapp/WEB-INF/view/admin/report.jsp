<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Program List</title>
    <style><%@include file="/resources/style/adminStyle/report.css"%></style>
</head>
<body>
    <div class="header">
        <h1>Program List</h1>
        <form action="" class="search-container">
            <img src="<c:url value='/resources/image/menu.png' />" alt="Menu Icon" class="menu">
            <input type="search" placeholder="Search">
            <img src="<c:url value='/resources/image/search.png' />" alt="Search Icon" class="search">
        </form>
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
        <table>
            <thead>
                <tr>
                    <th>No</th>
                    <th>Program</th>
                    <th>view</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Insight Journalism Club</td>
                    <form action="view-program" method="get">
                        <td><button class="view">Open</button></td>
                    </form>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Digital Media and Editing</td>
                    <form action="view-program" method="get">
                        <td><button class="view">Open</button></td>
                    </form>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Broadcast and Talk Show Team</td>
                    <form action="view-program" method="get">
                        <td><button class="view">Open</button></td>
                    </form>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Young Journalists Club</td>
                    <form action="view-program" method="get">
                        <td><button class="view">Open</button></td>
                    </form>
                </tr>
                <tr>
                    <td>5</td>
                    <td>Film and Creative Production</td>
                    <form action="view-program" method="get">
                        <td><button class="view">Open</button></td>
                    </form>
                </tr>
                <tr>
                    <td>6</td>
                    <td>Sports Broadcast Network</td>
                    <form action="view-program" method="get">
                        <td><button class="view">Open</button></td>
                    </form>
                </tr>
                <tr>
                    <td>7</td>
                    <td>Eco Warriors Channel</td>
                    <form action="view-program" method="get">
                        <td><button class="view">Open</button></td>
                    </form>
                </tr>
                <tr>
                    <td>8</td>
                    <td>History and Culture Hub</td>
                    <form action="view-program" method="get">
                        <td><button class="view">Open</button></td>
                    </form>
                </tr>
                <tr>
                    <td>9</td>
                    <td>Science Discovery Project</td>
                    <form action="view-program" method="get">
                        <td><button class="view">Open</button></td>
                    </form>
                </tr>
                <tr>
                    <td>10</td>
                    <td>Muar Youth Media Hub</td>
                    <form action="view-program" method="get">
                        <td><button class="view">Open</button></td>
                    </form>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>