<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cus_order.aspx.cs" Inherits="XYZ.cus_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>XYZ laundry management</title>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<link href="Customer/layout/styles/layout.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" href="Customer/assets/vendor/bootstrap/css/bootstrap.min.css"/>
    <link href="Customer/assets/vendor/fonts/circular-std/style.css" rel="stylesheet"/>
    <link rel="stylesheet" href="Customer/assets/libs/css/style.css"/>
    <link rel="stylesheet" href="Customer/assets/vendor/fonts/fontawesome/css/fontawesome-all.css"/>
</head>
<body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="fl_left">
      <ul class="nospace">
        <li><a href="Customer.aspx"><i class="fas fa-home fa-lg"></i></a></li>
      </ul>
    </div>
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
      <li><a href="Customer.aspx">Home</a></li>
    </ul>
    <!-- ################################################################################################ -->
  </nav>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper bgded overlay" style="background-image:url('Customer/images/demo/fier.jpg');">
  <div id="breadcrumb" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <h6 class="heading">New Order</h6>
    <ul>
      <li><a href="Customer.aspx">Home</a></li>
      <li><a >New Order</a></li>
    </ul>
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
    <div class="content"> 
  
      <!-- ################################################################################################ -->
                              <div class="card">
                                    <h5 class="card-header">Order Details</h5>
                                    <div class="card-body">
                                        <form method="get" runat="server">
                                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                            
                                            <div class="form-row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="inputText3" class="col-form-label">Enter User ID</label>
                                                        <asp:TextBox ID="txt_uId" runat="server" type="text" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                        
                                            </div>
                                            
                                            <div class="form-row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="inputText3" class="col-form-label">Items Quantity</label>
                                                        <asp:TextBox ID="txt_items" runat="server" type="text" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                        
                                            </div>

                                             <div class="form-row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="inputText3" class="col-form-label">Weight (Kg)</label>
                                                        <asp:TextBox ID="txt_weight" runat="server" type="text" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
            
                                            </div>
                                             <div class="form-row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="inputText3" class="col-form-label">Service</label>
                                                        <asp:DropDownList ID="drp_serviceType" runat="server" class="form-control" DataTextField="name">
                                                        </asp:DropDownList>
                                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_xyzConnectionString %>" SelectCommand="SELECT [name] FROM [tbl_services]"></asp:SqlDataSource>
                                                    </div>
                                                </div>
                                            
                                            </div>

                                            <br/>

                                            <div class="col-sm-4 pl-0">
                                                <p class="text-right">
                                                    <asp:Button runat="server"  ID="btn_submit" Text="Submit"   type="submit" class="btn btn-space btn-primary" OnClick="btn_submit_Click"/>
                                                    <asp:Button runat="server" ID="btn_cancel" Text="Cancel"   class="btn btn-space btn-secondary" OnClick="btn_cancel_Click"/>
                                                </p>
                                            </div>
                                
                                        </form>
                                    </div>
                                    
                                </div>
                              </div>
      
    
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>

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
        <li><a href="#">How it works</a></li>
        <li><a href="#">Features</a></li>
        <li><a href="#">FAQ</a></li>
        <li><a href="#">Admin login</a></li>
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

