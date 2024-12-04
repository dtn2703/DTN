<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ác Quỷ Shop</title>
    <link rel="icon" type="image/x-icon" href="assets/icon.ico">
    <!--CSS-->
    <link href="./css/style.css" rel="stylesheet" type="text/css"/>

    <!--fontawesome-->
    <script src="https://kit.fontawesome.com/4d3747bacc.js" crossorigin="anonymous"></script>

</head>

<body>
<!--header-->
<section id="header2">
    <li><a class="logout-btn" href="logout">LOG OUT</a></li>
</section>
<!--Body-->
<section id="manager-table">
    <div>
        <table width="80%">
            <thead>
            <tr>
                <td>ID</td>
                <td>Hình minh hoạ</td>
                <td>Tên</td>
                <td>Mô tả</td>
                <td>Nhà phát hành</td>
                <td>Nhà phát triển</td>
                <td>Ngày phát hành</td>
                <td>Giá tiền</td>
                <td>demo1</td>
                <td>demo2</td>
                <td>demo3</td>
                <td>demo4</td>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="p" items="${listP}">
                <tr>
                    <td>${p.gameID}</td>
                    <td><img src="${p.image}"></td>
                    <td>${p.gameName}</td>
                    <td>${p.description}</td>
                    <td>${p.gamePublisher}</td>
                    <td>${p.gameDeveloper}</td>
                    <td>${p.releaseDate}</td>
                    <td>${p.price}</td>
                    <td><img src="${p.demo1}"></td>
                    <td><img src="${p.demo2}"></td>
                    <td><img src="${p.demo3}"></td>
                    <td><img src="${p.demo4}"></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="modal-footer">
        <input size="50" type="submit" value="Back" onclick="window.location.href='manager.jsp'">
    </div>
</section>


<script src="./js/main.js"></script>
</body>

</html>
