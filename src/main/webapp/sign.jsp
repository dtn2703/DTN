<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Ác Quỷ Shop</title>
  <link rel="icon" type="image/x-icon" href="./assets/icon.ico">
  <!--CSS-->
  <link href="./css/style.css" rel="stylesheet" type="text/css" />

  <!--fontawesome-->
  <script src="https://kit.fontawesome.com/4d3747bacc.js" crossorigin="anonymous"></script>

</head>

<body>
<!--header-->
<section id="header">
  <a href="index.jsp"><img src="./assets/logo.png" class="logo" alt=""></a>
  <div class="searchbar">
    <form action="search" method="post">
      <input name="searchContent" type="text" placeholder="Từ khoá">
      <button type="submit" onclick="window.location.href='search'">Search</button>
    </form>
  </div>
  <div>
    <ul id="navbar">
      <li><a href="index.jsp">HOME</a></li>
      <li><a href="shop">SHOP</a></li>
      <li><a class="active" href="account">
        <c:choose>
          <c:when test="${sessionScope.customer!=null}">
            Chào, ${sessionScope.customer.firstName}
          </c:when>
          <c:when test="${sessionScope.customer==null}">
            ĐĂNG NHẬP
          </c:when>
        </c:choose>
      </a></li>
      <li><a href="cart.jsp">CART(<span>${sessionScope.cart.count}</span>)</a></li>
    </ul>
  </div>
</section>
<!--Body-->
<section id="signin">
  <button onclick="window.location.href='shop'">Back</button>
  <div>
  <div id="signin-section">
    <form action="signin" method="post">
      <input type="hidden" value="add" name="action">
      <div class="sign">
            <div>
              <p>Họ</p>
              <input type="text" placeholder="Họ" name="lastName" required>
              <p>Tên</p>
              <input type="text" placeholder="Tên" name="firstName" required>
              <p>Số điện thoại</p>
              <input type="text" placeholder="Số điện thoại" name="phoneNumber" required>
            </div>
            <div>
              <p>Tên đăng nhập</p>
              <input type="text" placeholder="Tên đăng nhập" name="userName" required>
              <p>Mật khẩu</p>
              <input type="password" placeholder="Password" name="password" required>
              <p>Email</p>
              <input type="text" placeholder="Email" name="email" required>
            </div>
            <div>
              <p>Địa chỉ</p>
              <input type="text" placeholder="Địa chỉ" name="address" required>
            </div>
            <input style="position: relative; top:175px;" type="submit" value="Đăng kí">
          </div>
      <div>
        <p style="position:relative;color: red; left:-10%;">${message}</p>
      </div>
    </form>
  </div>
  </div>


</section>
<footer class="section-p1">
  <div class="col">
    <img class="logo" src="assets/logo.png" width="130px" height="130px">
    <h4>Liên hệ</h4>
    <p><strong>Địa chỉ: </strong>01, Võ Văn Ngân, P. Linh Chiểu, TP. Thủ Đức</p>
    <p><strong>Điện thoại: </strong>0832392859 - 0962906973</p>
    <p><strong>Làm việc: </strong>6AM - 7PM các ngày trong tuần</p>
  </div>

  <div class="col">
    <h4>Giới thiệu</h4>
    <p>Là một trong các cửa hàng mua game uy tín hàng đầu việt nam &#128039;</p>
    <p>Chúng tôi hân hạnh cung cấp cho bạn các tựa game bom tấn với giá rẻ bất ngờ &#128039;</p>
    <p>Trang web được code bằng tình yêu, mồ hôi, nước mắt, và rất nhiều Cafe <i class="fa fa-coffee"
        style="font-size:24px"></i></p>
  </div>
  <div>
    <div class="follow">
      <h4>Theo dõi chúng tôi tại</h4>
      <div class="icon">
        <a href="https://www.facebook.com/profile.php?id=100009187971876" class="fab fa-facebook-f fa-2xl"></a>
        <a href="https://www.instagram.com/duytan_2703/" class="fab fa-instagram fa-2xl"></a>
        <a href="https://www.youtube.com/@duytannguyen3145" class="fab fa-youtube fa-2xl"></a>
      </div>
    </div>
    <div class="payment">
      <h4>Được bảo mật bởi</h4>
      <img src="assets/pay.png">
    </div>
  </div>
</footer>
<div class="copyright">
  <p>
    <center>@ 2024, ZeeTank.inc - AcQuy's all right reserved.</center>
  </p>
</div>

<script src="./js/main.js"></script>
</body>
</html>
