<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String contextPath = request.getContextPath();
%>
<html lang="en" dir="ltr">

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="../stylesheets/style.css">
</head>

<body>
  <section>
    <div class="container">
      <div class="left">
        <div class="main_image">
          <img src="../images/airpods 3rd gen.jpg" class="slide">
        </div>
        <div class="option flex">
          <img src="../images/p1.png" onclick="img('../images/p1.png')">
          <img src="../images/p1.png" onclick="img('../images/p1.png')">
          <img src="../images/p1.png" onclick="img('../images/p1.png')">
          <img src="../images/p1.png" onclick="img('../images/p1.png')">
          
        </div>
      </div>
      <div class="right">
        <h3>AirPods Max</h3>
        <h4> <small>$</small>549 </h4>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
        <h5>Color-Rose Gold</h5>
        
        <h5>Number</h5>
        <div class="add flex1">
          
        </div>
        <form action="<%=contextPath%>/uploadCart" method='post'>
				<input type='hidden' value="AirPods Max" name="product_name">
				<input type='hidden' value="$549" name="unit_price">
				<label class="quan">Quantity</label>
				<input type='text' name="product_quantity">
				
		        <button type='submit'>Add to Cart</button>
		
		</form>

       
      </div>
    </div>
  </section>
  <script>
    function img(anything) {
      document.querySelector('.slide').src = anything;
    }

    function change(change) {
      const line = document.querySelector('.home');
      line.style.background = change;
    }
  </script>
</body>

</html>