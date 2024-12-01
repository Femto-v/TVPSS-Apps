<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crew</title>
    <style><%@include file="/resources/style/schoolStyle/crew.css"%></style>
</head>
<body>
    <div class="header">
        <h1>Crew Profile</h1>
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
        <form action="crewManage" method="get">
            <button class="view">+ Add User</button>
        </form>
        <table>
            <thead>
                <tr>
                    <th>No</th>
                    <th>Name</th>
                    <th>Student ID</th>
                    <th>Roles</th>
                    <th>Task</th>
                    <th>Edit</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Ahmad Zulkifli bin Hassan</td>
                    <td>STU20230101</td>
                    <td>Project Manager</td>
                    <form action="">
                        <td><button id="ongoing" class="view">On Going</button></td>
                    </form>
                    <form action="crewManage" method="get">
                        <td><button class="view">Open</button></td>
                    </form>    
                </tr>
                <tr>
                    <td>2</td>
                    <td>Siti Nur Aisyah binti Rahman</td>
                    <td>STU20230102</td>
                    <td>Content Writer</td>
                    <form action="">
                        <td><button id="complete" class="view">Complete</button></td>
                    </form>
                    <form action="crewManage" method="get">
                        <td><button class="view">Open</button></td>
                    </form> 
                </tr>
                <tr>
                    <td>3</td>
                    <td>Nurul Iman binti Ismail</td>
                    <td>STU20230103</td>
                    <td>Camera Operator</td>
                    <form action="">
                        <td><button id="complete" class="view">Complete</button></td>
                    </form>
                    <form action="crewManage" method="get">
                        <td><button class="view">Open</button></td>
                    </form> 
                </tr>
                <tr>
                    <td>4</td>
                    <td>Mohd Faizal bin Abdullah</td>
                    <td>STU20230104</td>
                    <td>Editor</td>
                    <form action="">
                        <td><button id="incomplete" class="view">Incomplete</button></td>
                    </form>
                    <form action="crewManage" method="get">
                        <td><button class="view">Open</button></td>
                    </form> 
                </tr>
                <tr>
                    <td>5</td>
                    <td>Tan Wei Ling</td>
                    <td>STU20230105</td>
                    <td>Researcher</td>
                    <form action="">
                        <td><button id="complete" class="view">Complete</button></td>
                    </form>
                    <form action="crewManage" method="get">
                        <td><button class="view">Open</button></td>
                    </form> 
                </tr>
                <tr>
                    <td>6</td>
                    <td>Rajesh Kumar a/l Gopal</td>
                    <td>STU20230106</td>
                    <td>Sound Technician</td>
                    <form action="">
                        <td><button id="incomplete" class="view">Incomplete</button></td>
                    </form>
                    <form action="crewManage" method="get">
                        <td><button class="view">Open</button></td>
                    </form> 
                </tr>
                <tr>
                    <td>7</td>
                    <td>Lim Mei Ying</td>
                    <td>STU20230107</td>
                    <td>Graphic Designer</td>
                    <form action="">
                        <td><button id="ongoing" class="view">On Going</button></td>
                    </form>
                    <form action="crewManage" method="get">
                        <td><button class="view">Open</button></td>
                    </form> 
                </tr>
                <tr>
                    <td>8</td>
                    <td>Syafiqah binti Mohamad</td>
                    <td>STU20230108</td>
                    <td>Host/Presenter</td>
                    <form action="">
                        <td><button id="incomplete" class="view">Incomplete</button></td>
                    </form>
                    <form action="crewManage" method="get">
                        <td><button class="view">Open</button></td>
                    </form> 
                </tr>
                <tr>
                    <td>9</td>
                    <td>Chong Wei Kiat</td>
                    <td>STU20230109</td>
                    <td>Social Media Manager</td>
                    <form action="">
                        <td><button id="ongoing" class="view">On Going</button></td>
                    </form>
                    <form action="crewManage" method="get">
                        <td><button class="view">Open</button></td>
                    </form> 
                </tr>
                <tr>
                    <td>10</td>
                    <td>Aisyah Sofia binti Azman</td>
                    <td>STU20230110</td>
                    <td>Assistant Producer</td>
                    <form action="">
                        <td><button id="ongoing" class="view">On Going</button></td>
                    </form>
                    <form action="crewManage" method="get">
                        <td><button class="view">Open</button></td>
                    </form> 
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>