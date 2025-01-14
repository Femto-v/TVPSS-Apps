<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                <h1>Update Equipment</h1>
                <div class="rows">
                    <div class="first-row">
                        <form action="studioEquipment" method="post">
                            <!-- Equipment Items -->
                            <h3>Smartphone</h3>
                            <input type="hidden" name="equipmentList[0].name" value="Smartphone">
                            <input type="number" name="equipmentList[0].quantity" min="0">
                            
                            <h3>Ring Light</h3>
                            <input type="hidden" name="equipmentList[1].name" value="Ring Light">
                            <input type="number" name="equipmentList[1].quantity" min="0">
                            
                            <h3>Webcam</h3>
                            <input type="hidden" name="equipmentList[2].name" value="Webcam">
                            <input type="number" name="equipmentList[2].quantity" min="0">
                            
                            <h3>Mobile Lighting</h3>
                            <input type="hidden" name="equipmentList[3].name" value="Mobile Lighting">
                            <input type="number" name="equipmentList[3].quantity" min="0">
                            
                            <h3>Camera</h3>
                            <input type="hidden" name="equipmentList[4].name" value="Camera">
                            <input type="number" name="equipmentList[4].quantity" min="0">
                            
                            <h3>3 Point Lighting</h3>
                            <input type="hidden" name="equipmentList[5].name" value="3 Point Lighting">
                            <input type="number" name="equipmentList[5].quantity" min="0">
                            
                            <h3>Clip Microphone</h3>
                            <input type="hidden" name="equipmentList[6].name" value="Clip Microphone">
                            <input type="number" name="equipmentList[6].quantity" min="0">
                    </div>
                    <div class="second-row">
                        <h3>Clip Mobile Green Screen Set</h3>
                        <input type="hidden" name="equipmentList[7].name" value="Clip Mobile Green Screen Set">
                        <input type="number" name="equipmentList[7].quantity" min="0">
                        
                        <h3>Wireless Microphone</h3>
                        <input type="hidden" name="equipmentList[8].name" value="Wireless Microphone">
                        <input type="number" name="equipmentList[8].quantity" min="0">
                        
                        <h3>Green Screen</h3>
                        <input type="hidden" name="equipmentList[9].name" value="Green Screen">
                        <input type="number" name="equipmentList[9].quantity" min="0">
                        
                        <h3>Monopod</h3>
                        <input type="hidden" name="equipmentList[10].name" value="Monopod">
                        <input type="number" name="equipmentList[10].quantity" min="0">
                        
                        <h3>Editing Software (Open Source)</h3>
                        <input type="hidden" name="equipmentList[11].name" value="Editing Software (Open Source)">
                        <input type="number" name="equipmentList[11].quantity" min="0">
                        
                        <h3>Tripod</h3>
                        <input type="hidden" name="equipmentList[12].name" value="Tripod">
                        <input type="number" name="equipmentList[12].quantity" min="0">
                        
                        <h3>Editing Software (Pro/Paid Version)</h3>
                        <input type="hidden" name="equipmentList[13].name" value="Editing Software (Pro/Paid Version)">
                        <input type="number" name="equipmentList[13].quantity" min="0">
                        
                        </div>    
                </div>
                <div class="buttons">
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