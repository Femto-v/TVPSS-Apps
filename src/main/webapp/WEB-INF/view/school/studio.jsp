<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Studio</title>
    <style><%@include file="/resources/style/schoolStyle/studio.css"%></style>
</head>
<body>
    <div class="header">
        <h1>Studio</h1>
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
        <form action="crew" method="get">
            <button type="submit" class="button button1"><img src="<c:url value='/resources/image/crew.png' />" alt="home logo" class="home"> Crew <img src="<c:url value='/resources/image/arrow.png' />" alt="" class="arrow"></button> <br>
        </form>
        <form action="program" method="get">
            <button type="submit" class="button button2"><img src="<c:url value='/resources/image/program.png' />" alt="" class="library"> Program <img src="<c:url value='/resources/image/arrow.png' />" alt="" class="arrow"></button> <br>
        </form>
        <form action="librarySchool" method="get">
            <button type="submit" class="button button3"><img src="<c:url value='/resources/image/library.png' />" alt="" class="report">Content Library <img src="<c:url value='/resources/image/arrow.png' />" alt="" class="arrow"></button> <br>
        </form>
        <form action="studio" method="get">
            <button type="submit" class="button button4"><img src="<c:url value='/resources/image/studio.png' />" alt="" class="report">Studio<img src="<c:url value='/resources/image/arrow.png' />" alt="" class="arrow"></button> <br>
        </form>
        <form action="loginSchool" method="get">
            <button type="submit"  class="button button5"><img src="<c:url value='/resources/image/logout.png' />" alt="" class="logout"> Logout <img src="<c:url value='/resources/image/arrow.png' />" alt="" class="arrow"></button>
        </form>
    </div>

    <div class="content">
        <div class="container">
            <div class="box">
                <img src="<c:url value='/resources/image/logo.png' />" alt="" class="crew-logo">
                <div class="info">
                    <h3>Brand name: KENNGAN NUSARI</h3>
                    <h3>School Name: Sekolah Menengah Kebangsaan Taman Nusari</h3>
                    <h3>Address: Jalan Nusari 1, Taman Nusari, 81000 Kulai, Johor</h3>
                    <h3>Level: 1 - Beginner</h3>
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
                    <form action="studioManage" method="get">
                        <button class="view">Edit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>