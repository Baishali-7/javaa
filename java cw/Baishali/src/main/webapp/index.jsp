<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="./stylesheets/s.css">
  <style>
  .Nav{
    background-color: #0C193B;
    
}
.img{
width: 200px;
height: 60px;

margin-left: 50px;
}
.sear{
    display: flex;
    margin-left: 150px;
}
.search{
    margin-top: 15px;
    margin-left: 400px;
   
    padding-left: 10px;
    height: 30px;
    font-family: Arial, Helvetica, sans-serif ;
}
.sb{
   margin-top: 15px;
   margin-bottom: 15px;
   
}
.Nav{
    display: flex;
}

.login{
    margin-left: 40px;
    margin-bottom: 10px;
    font-family: Arial, Helvetica, sans-serif;
    height: 30px;
    margin-top: 15px;
    
}
.account{
    width: 35px;
    height: 35px;
    margin-left: 30px;
    margin-top: 13px;
    
}
.cart{
    width: 35px;
    height: 35px;
    margin-left: 30px;
    margin-top: 13px;
}
.AirPod{
     margin-left: 200px;
     margin-top: 50px;
     font-size: 150px;
     font-family: Arial, Helvetica, sans-serif;
     /*0F295B*/
     color:  #0C193B;
     font-weight: 1000;
     
}
.photo{
    position: absolute;
    top: 30%;
    margin-left: 150px;
    
}
.small{
    position: absolute;
    top: 20%;
    margin-left: 620px;
    font-size: 50px;
    font-weight: bold;
    font-family: Arial, Helvetica, sans-serif;
    color: #0C193B;
}

.text{
    position: absolute;
    margin-left: 620px;
    top: 53%;
    font-family: Arial, Helvetica, sans-serif;
    font-size: 20px ;
}

.button{
    position: absolute;
    margin-left: 620px;
    top: 75%;
    color: aliceblue;
    background-color: #0C193B;
    height: 40px;
    width: 80px;
    border-radius: 30px;
    border: none;
    
}

.charge{
    position: absolute;
    top: 52%;
    margin-left: 800px;

}
 .tops{
    height: 900px;
  }
  body {
                margin: 0;
                padding: 0;
            }
            .container {
                position: relative;
                width: 100%;
                height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
            }
            .background-image {
                position: absolute;
                top: 35;
                left: 65%;
                transform: translateX(-50%);
                z-index: -1;
                width: 450px;
                size: 250; 
            }
            .content {
                text-align: center;
            }
            h1 {
                font-size: 75px;
                font-family: Arial, sans-serif;
                color: #0F295B;
                padding-left: 20;
            }
            button {
                background-color: #0F295B;
                color: white;
                padding: 15px 25px;
                font-size: 20px;
                border: none;
                border-radius: 30px;
                cursor: pointer;
                transition: background-color 0.3s;
                margin-top: 20px;
            }
            button:hover {
                background-color: #093E77;
            }
            .middle{
            height:900px;}
            :root{
    --accent-color: #069fe6;
    --light-grey: rgba(0,0,0,0.1);
}
#open_cart_btn{
    position: absolute;
    top: 10px;
    right: 10px;
    border: none;
    background-color: var(--accent-color);
    padding: 10px;
    border-radius: 5px;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
}



.sidecart{
    position: fixed;
    top: 0;
    right: 0;
    height: 100vh;
    width: 350px;
    background-color: #fff;
    box-shadow: -10px 0 15px var(--light-grey);
    transform: translateX(110%);
    transition: transform 0.5s ease-in-out;
}

.sidecart.open{
    transform: translateX(0);
}

.cart_content{
    display: flex;
    flex-direction: column;
    height: 100%;
    

}
.cart_header{
    padding: 1rem;
    border-bottom: 1px solid var(--light-grey);
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.cart_header .close_btn{
    font-size: 2rem;
    cursor: pointer;
    transition: transform 0.2s ease;
}

.cart_header .close_btn:hover{
    transform: scale(1.1);

}

.cart_items{
    display: flex;
    overflow-x: hidden;
}
.item_img{
    flex: 1;
}
.item_img img{
    width: 100%;
    height: 100%;
    object-fit: contain;

}
.items_details{
    flex: 2;
}

.cart_action{
    padding: 1rem 2rem;
    display: flex;
    flex-direction: column;
    gap: 1rem;
    border-top: 1px solid var(--light-grey);
    box-shadow: 0 -5px 10px var(--light-grey);
}

.cart_action .subtotal{
    margin-bottom: 1rem;
    display: flex;
    align-items: center;
    justify-content: space-between;
    font-size: 14px;
    font-weight: bold;
    letter-spacing: 2px;
}

.cart_action button{
    border: none;
    background-color: var(--accent-color);
    color: #fff;
    border-radius: 15px;
    padding: 10px;
    font-size: 14px;
    text-transform: uppercase;
    letter-spacing: 2px;
    cursor: pointer;
}




button:hover{
    opacity: 0.8;
}
  

  </style>
</head>

<body>
	<section class="tops">
    <form>
            <div class="Nav">
            <img src="./images/1.png" class="img">
            <div class="sear">
            <input class="search" type="search" >
            <button class="sb" type="submit" name="search">Search</button>
            </div>
            <button class="login" name="login" type="submit">
            <a href="./pages/login.jsp">
            Login</button> 
            </a>
            <img src="./images/2.jpg" class="account">
            <img src="./images/cart.png" class="cart">
            
           </div>
           

            <div>
            <p class="AirPod"> Air <br>
                Pods<br>
                Pro
                </p>
            <div class="photo">
            <img src="./images/3.png"  height="400px" width="400px">
            </div>
            </div>

            <div>
                <p class="small"> Air <br>
                    Pods <br>
                    Pro </p>

                <p class="text"> Adaptive EQ that tunes<br>
                    music to your ear, and<br>
                    delivers an experience<br>
                    that’s simply magical.<br>

                </p>

                <button class="button">Shop Now</button>

                <img src="./images/4.webp" class="charge" height="350px" width="350px">
                
            </div>
        </form>
        <button id="open_cart_btn">
        <img src="cart.png" style="width: 30px;">
    </button>


    <div class="sidecart">
        <div class="cart_content">


            <div class="cart_header">

                <img src="cart.png" style ="width:40px" />
                <div class="header_title">
                    <h2>Your Cart</h2>

                    </div>

                <span id="close_btn" class="close_btn">&times;</span>
            </div>
           


               
                <div class="cart_items">
                    <div class="item_img">
                        <img src="airpods pro 2nd gen.jpg">
                    </div>
                    <div class="items_details">
                        <p>Airpods Pro 2nd Generation</p>
                        <strong> Rs $129 </strong>
                    </div>

                    
                </div>

                <div class="cart_items">
                    <div class="item_img">
                        <img src="airpods 3rd gen.jpg">
                    </div>
                    <div class="items_details">
                        <p>Airpods Pro 3rd Generation</p>
                        <strong> Rs $169 </strong>
                    </div>

                    
                </div>

                <div class="cart_items">
                    <div class="item_img">
                        <img src="airmax.png">
                    </div>
                    <div class="items_details">
                        <p>Air Pod Max </p>
                        <strong> Rs $549 </strong>
                    </div>

                    
                </div>




                <div class="cart_action">
                <div class="subtotal">
                    <p>SUBTOTAL: $847</p>



                </div>
                
                <button>Checkout</button>
                </div>

</div>
</div>
<script>
    const openBtn = document.getElementById('open_cart_btn');
    const cart = document.querySelector('.sidecart'); // Changed to select by class
    const closeBtn = document.getElementById('close_btn');

    openBtn.addEventListener('click', openCart);
    closeBtn.addEventListener('click', closeCart);

    function openCart(){
        cart.classList.add('open');
    }

    function closeCart(){
        cart.classList.remove('open');
    }
</script>    
        </section >
        <section class="middle">
         <div class="container">
            <img class="background-image" src="./images/airmax.png" alt="Max">
            <div class="content">
                <h1> LOOKING <br> FOR <br> YOUR <br> EAR <br> BUDDY?</h1>
                <button onclick="window.location.href='another_page.html'">Buy</button>
            </div>
        </div></section>
    <header>
        <h1 class="h1p">AirPods</h1>
      </header>
      <div class="airpod">
 
        <div class="airpod1">
          <img src="./images/airpods 2nd gen.png" alt="AirPods 2nd generation">
          <h2 class="h2p">AirPods 2nd Generation</h2>
          <p>$129</p>
          <a href= "pages/p.jsp">
          <button>Buy</button></a>
        </div>
        
        <div class="airpod2">
          <img src="./images/airpods 3rd gen.jpg" alt="AirPods 3rd generation">
          <h2 class="h2p">AirPods 3rd Generation</h2>
          <p>$169</p>
          <a href= "pages/third.jsp">
          <button>Buy</button></a>
        </div>
        <div class="airpod3">
          <img src="./images/airpods 3rd gen.jpg" alt="AirPods 2nd generation (USB-C)">
          <h2 class="h2p">AirPods 2nd Generation (USB-C)</h2>
          <p>$249</p>
          <a href= "pages/pro.jsp">
          <button>Buy</button></a>
        </div>
        <div class="airpod4">
          <img src="./images/airmax.png" alt="AirPods Max">
          <h2 class="h2p">AirPods Max</h2>
          <p>$549</p>
          <a href= "pages/max.jsp">
          <button>Buy</button></a>
        </div>
        </div>
     
      <footer>
        <p>&copy; Earbuddies</p>
        <p>Follow us: @Earbuddies</p>
        <p>Contact:</p>
        <p>Phone Number: +9777 98******</p>
        <p>Email: earbuddies@gmail.com</p>
      </footer>
    </body>
    </html>