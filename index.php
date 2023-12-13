<?php
include "includes/head.php"
?>

<body>
  <!----------------         carousel                     --------->

  <?php

  include "includes/header.php";
  ?>

  <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="images/ok2.png" class="d-block w-100" style="height: 270px;">
      </div>
      <div class="carousel-item">
        <img src="images/ok3.gif" class="d-block w-100" style="height: 270px;">
      </div>
      <div class="carousel-item">
        <img src="images/ok4.gif" class="d-block w-100" style="height: 270px;">
      </div>
      <div class="carousel-item">
        <img src="images/ok5.gif" class="d-block w-100" style="height: 270px;">
      </div>
      <div class="carousel-item">
        <img src="images/ok1.gif" class="d-block w-100" style="height: 270px;">
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
  <!----------------       end of carousel                     --------->
  <div class="container-fluid ">

    <!-- categories-->

    <div class="row" id="cards">
      <div class="col-sm-3" id="cards">
        <div class="card " style="background-color: AntiqueWhite; height: 100%;">
          <div class="card-body">
            <strong style="background-color:  LightSteelBlue; color: white ; ;">&nbsp;UPTO 50% OFF&nbsp;</strong>
            <strong>
              <h5 style="font-weight:bold; color: rgb(104, 97, 97);"> Antique Products</h5>
            </strong>
            <a href="search.php?cat=antiques">
              <img src="images/Hehe.png" style=height:150px ;" class="d-block " alt="...">
            </a>
            <br>
          </div>
        </div>
      </div>
      <div class="col-sm-3" id="cards">
        <div class="card " style="background-color: rgb(93, 179, 207) ;height: 100%; ">
          <div class="card-body">
            <strong style="background-color:  SlateGray ; color: white ; ;">&nbsp;UPTO 35% OFF&nbsp;</strong>
            <strong>
              <h5 style="font-weight:bold; color: rgb(104, 97, 97);"> Pendants</h5>
            </strong>
            <a href="search.php?cat=pendant">
              <img src="images/pendant.png" style=" height:150px ;">
            </a>
            <br><br><br>
          </div>
        </div>
      </div>
      <div class="col-sm-3" id="cards">
        <div class="card " style="background-color: rgb(81, 211, 216);height: 100%; ">
          <div class="card-body">
            <strong style="background-color:  LightSlateGrey; color: white ; ;">&nbsp;UPTO 70% OFF&nbsp;</strong>
            <strong>
              <h5 style="font-weight:bold; color: rgb(104, 97, 97);">Mystical Products</h5>
            </strong>
            <a href="search.php?cat=machine">
              <img src="images/eye.png" style=" height:150px ;"><br>
            </a>
            <br> <br>
          </div>
        </div>
      </div>
      <div class="col-sm-3" id="cards">
        <div class="card " style="background-color: AntiqueWhite; height: 100%;">
          <div class="card-body">
            <br>
            <h5 style="font-weight:bold; color: rgb(104, 97, 97);">Our Stores</h5>
            </strong>
            <a href="https://blog.daraz.com.bd/list-of-daraz-collection-points/" target="_blank">
              <img src="images/store.png" style="height:150px ;"><br>
            </a>
            <br> <br>
          </div>
        </div>
      </div>
    </div>
    
    <h2 style="margin-top: 10px;">Products you might like : </h2>

    <div class="row">
      <?php
      $data = all_products();
      $num = sizeof($data);
      for ($i = 0; $i < $num; $i++) {

      ?>
        <div class="col-sm-2" id="cards" style="width: 20.45rem;">
          <div class="card border border-warning">
            <img src="images/<?php echo $data[$i]['item_image'] ?>" class="card-img-top" style="width:305.3px ; height:305px ;">
            <div class="card-body">
              <?php
              if (strlen($data[$i]['item_title']) <= 20) {
              ?>
                <h5 class="card-title"><?php echo $data[$i]['item_title'] ?></h5>

              <?php
              } else {
              ?>
                <h5 class="card-title"><?php echo substr($data[$i]['item_title'], 0, 20) . "..." ?></h5>
              <?php
              }
              ?>
              <br> <br>
              <strong>
                <h3 style="color :#82E0AA;" class="card-text"> ৳<?php echo $data[$i]['item_price'] ?></h3>
              </strong>
              <br>
              <small class="text-muted" style="font-weight: bold;">Brand Name: <?php echo $data[$i]['item_brand'] ?></small><br><br>
              <a href="product.php?product_id=<?php echo $data[$i]['item_id'] ?>" class="btn btn-outline-info">More details</a>

            </div>
          </div>
        </div>
      <?php
        if ($i == 7) {
          break;
        }
      }
      ?>
    </div>

    <!----------------        end of products might you like                     --------->
    <br>
    <br>
    <br>
    <br>
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-4" style="padding-left: 20px;">
          <img src="images/family.png">
          <h1 style="color:  rgb(47,79,79); font-weight: bold;"> 100,000 </h1>
          <h5 style="color:  rgb(47,79,79);"> People Registered As Of Now 14th december 2023</h5>

        </div>
        <div class="col-sm-4" style="padding-left: 20px; border-bottom-right-radius: 2px;">
          <img src="images/delivery.png">
          <h1 style="color:  rgb(47,79,79); font-weight: bold;"> 1625 </h1>
          <h5 style="color:  rgb(47,79,79);">Total Orders As Of 14th Dec 2023, 12.41pm</h5>
        </div>
        <div class="col-sm-4" style="padding-left: 60px;">
          <img src="images/packages.png">
          <h1 style="color:  rgb(47,79,79); font-weight: bold;"> 50,000 </h1>
          <h5 style="color:  rgb(47,79,79);">Stocks Present Currently. We Got You Covered <3</h5>
        </div>
      </div>
    </div>
    <h1 class="border border-2" style="width: 100%;"> </h1>
  </div>
  <!-- FOOTER -->
  <?php
  include "includes/footer.php"
  ?>
</body>

</html>