<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="XYZ.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>XYZ laundry management</title>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<link href="Customer/layout/styles/layout.css" rel="stylesheet" type="text/css" media="all"/>
</head>
<body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
    <!-- ################################################################################################ -->
   <form runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="fl_left">
      <ul class="nospace">
        <li><a href="Customer.aspx"><i class="fas fa-home fa-lg"></i></a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Contact</a></li>
        <li><a href="Login.aspx">Login</a></li>
        <li><a href="signUp.aspx">Register</a></li>
        <li><a href="signUp.aspx"> <asp:Button ID="Button1" runat="server" class="btn btn-space btn-primary" Text="Logout" OnClick="Button1_Click"/>  </a></li>
      </ul>
    </div>
       </form>
    <div class="fl_right">
      <ul class="nospace">
        <li><i class="fas fa-phone rgtspace-5"></i> +94 (37) 222 3027</li>
        <li><i class="fas fa-envelope rgtspace-5"></i> ishara@outlook.com</li>
      </ul>
    </div>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="one_half first">
      <h1 class="logoname"><a href="Customer.aspx"><span>XYZ</span>laundry</a></h1>
    </div>
    <div class="one_half">
      <ul class="nospace clear">
        <li class="one_half first">
          <div class="block clear"><i class="fas fa-phone"></i> <span><strong class="block">Call Us:</strong> +94 (37) 222 3027</span> </div>
        </li>
        <li class="one_half">
          <div class="block clear"><i class="far fa-clock"></i> <span><strong class="block"> Mon. - Sat.:</strong> 08.00am - 18.00pm</span> </div>
        </li>
      </ul>
    </div>
    <!-- ################################################################################################ -->
  </header>
  <nav id="mainav" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <ul class="clear">
      <li class="active"><a href="Customer.aspx">Home</a></li>
      <li><a href="CustomerAccount.aspx">Manage My Account</a></li>
      <li><a href="cus_order.aspx">Order Now</a></li>
      <li><a href="Customer_orderTrace.aspx">My orders</a></li>
      <li><a href="#">Pricing</a></li>
      <li><a href="#">Free Wash</a></li>
    </ul>
    <!-- ################################################################################################ -->
  </nav>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper bgded overlay" style="background-image:url('Customer/images/demo/backgrounds/03.jpg');">
  <div id="pageintro" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <article>
      <p>Join us to send non-stop trash..</p>
      <h3 class="heading">DRY CLEANING & LAUNDRY, DELIVERED!</h3>
      <p>Your clothes and other items will be cleaned and delivered to you in a very clean and safe manner</p>
      <footer><a class="btn" href="#">Potenti nunc nec urna</a></footer>
    </article>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="sectiontitle">
      <h6 class="heading">CONVENIENCE WAS NEVER THIS AFFORDABLE</h6>
      <p>The packages provided to you by our company are as follows</p>
    </div>
    <ul class="nospace group overview">
      <li class="one_third">
        <figure><a href="#"><img src="Customer/images/demo/alothes-t-shirts.jpg" alt=""/></a>
          <figcaption>
            <h6 class="heading">WASH & FOLD</h6>
            <p>FROM LKR 65/=</p>
          </figcaption>
        </figure>
      </li>
      <li class="one_third">
        <figure><a href="#"><img src="Customer/images/demo/iStock.jpg" alt=""/></a>
          <figcaption>
            <h6 class="heading">WASH & IRON</h6>
            <p>FROM LKR 82/=</p>
          </figcaption>
        </figure>
      </li>
      <li class="one_third">
        <figure><a href="#"><img src="Customer/images/demo/images.jpg" alt=""/></a>
          <figcaption>
            <h6 class="heading">IRONING</h6>
            <p>FROM LKR 35/=</p>
          </figcaption>
        </figure>
      </li>
      <li class="one_third">
        <figure><a href="#"><img src="Customer/images/demo/fs6-img1.jpg" alt=""/></a>
          <figcaption>
            <h6 class="heading">DRY CLEANING</h6>
            <p>FROM LKR 150/=</p>
          </figcaption>
        </figure>
      </li>
      <li class="one_third">
        <figure><a href="#"><img src="Customer/images/demo/Dry_cleaning.jpg" alt=""/></a>
          <figcaption>
            <h6 class="heading">GREEN DRY CLEANING</h6>
            <p>FROM LKR 120/=</p>
          </figcaption>
        </figure>
      </li>
      <li class="one_third">
        <figure><a href="#"><img src="Customer/images/demo/shoe.jpg" alt=""/></a>
          <figcaption>
            <h6 class="heading">SHOE CLEANING</h6>
            <p>FROM LKR 90/=</p>
          </figcaption>
        </figure>
      </li>
      <li class="one_third">
        <figure><a href="#"><img src="Customer/images/demo/Bag_Cleaning.jpg" alt=""/></a>
          <figcaption>
            <h6 class="heading">BAG CLEANING</h6>
            <p>FROM LKR 40/=</p>
          </figcaption>
        </figure>
      </li>
       <li class="one_third">
        <figure><a href="#"><img src="Customer/images/demo/cleaning-services.jpg" alt=""/></a>
          <figcaption>
            <h6 class="heading">CURTAIN CLEANING</h6>
            <p>FROM LKR 65/=</p>
          </figcaption>
        </figure>
      </li>
       <li class="one_third">
        <figure><a href="#"><img src="Customer/images/demo/Carpat.jpg" alt=""/></a>
          <figcaption>
            <h6 class="heading">CARPET CLEANING</h6>
            <p>FROM LKR 65/=</p>
          </figcaption>
        </figure>
      </li>
    </ul>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row2">
  <section class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <div class="sectiontitle">
      <h6 class="heading">WHY CHOOSE US</h6>
      <p>Our reputation as the most trusted brand for Laundry and Dry Cleaning stems from our commitment to quality, affordable pricing, continual investment in technology, staff training and improved customer focus.</p>
    </div>
    <div class="group center">
      <article class="one_third first"><a class="ringcon btmspace-50" ><i class="fas fa-chess-king"></i></a>
        <h6 class="heading">Highest Quality</h6>
      </article>
      <article class="one_third"><a class="ringcon btmspace-50"><i class="fas fa-donate"></i></a>
        <h6 class="heading">Affordable Pricing</h6>
      </article>
      <article class="one_third"><a class="ringcon btmspace-50" ><i class="fas fa-text-width"></i></a>
        <h6 class="heading">Convenience</h6>
      </article>

    </div>
    <!-- ################################################################################################ -->
  </section>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->


<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper gradient">
  <section id="cta" class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <div class="sectiontitle">
      <h6 class="heading">OUR OUTLETS</h6>
      <p>We have a network of outlets to offer you maximum convenience.</p>
    </div>
    <ul class="nospace clear">
      <li class="one_third first">
        <div class="block clear"><i class="fas fa-phone"></i> <span><strong>Give us a call:</strong> +94 (37) 222 3027</span> </div>
      </li>
      <li class="one_third">
        <div class="block clear"><i class="fas fa-envelope"></i> <span><strong>Send us a mail:</strong> ishara@outlook.com</span> </div>
      </li>
      <li class="one_third">
        <div class="block clear"><i class="fas fa-map-marker-alt"></i> <span><strong>Come visit us:</strong> Directions to <a href="#">our location</a></span> </div>
      </li>
    </ul>
    <!-- ################################################################################################ -->
  </section>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row4">
  <footer id="footer" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="one_third first">
      <h1 class="logoname"><span>XYZ</span>laundry</h1>
      <p class="btmspace-30">If you have any confusions or if you are seeking for more information about our services please use this link to contact us, we are here to help.CONTACT US [<a href="#">&hellip;</a>]</p>
      <ul class="faico clear">
        <li><a class="faicon-dribble" href="#"><i class="fab fa-dribbble"></i></a></li>
        <li><a class="faicon-facebook" href="#"><i class="fab fa-facebook"></i></a></li>
        <li><a class="faicon-google-plus" href="#"><i class="fab fa-google-plus-g"></i></a></li>
        <li><a class="faicon-linkedin" href="#"><i class="fab fa-linkedin"></i></a></li>
        <li><a class="faicon-twitter" href="#"><i class="fab fa-twitter"></i></a></li>
        <li><a class="faicon-vk" href="#"><i class="fab fa-vk"></i></a></li>
      </ul>
    </div>
    <div class="one_third">
      <h6 class="heading">Company</h6>
      <ul class="nospace linklist">
        <li><a >How it works</a></li>
        <li><a>Features</a></li>
        <li><a>FAQ</a></li>
        <li><a href="Login.aspx">Admin login</a></li>
      </ul>
    </div>
    <div class="one_third">
      <h6 class="heading">subscribe </h6>
      <p class="nospace btmspace-15">Reach us through our happiness hotline</p>
      <form method="post" action="#">
        <fieldset>
          <legend>Newsletter:</legend>
          <input class="btmspace-15" type="text" value="" placeholder="Name"/>
          <input class="btmspace-15" type="text" value="" placeholder="Email"/>
          <button type="submit" value="submit">Submit</button>
        </fieldset>
      </form>
    </div>
    <!-- ################################################################################################ -->
  </footer>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved - <a href="#">XYZ laundry</a></p>
    
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="Customer/layout/scripts/jquery.min.js"></script>
<script src="Customer/layout/scripts/jquery.backtotop.js"></script>
<script src="Customer/layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>
