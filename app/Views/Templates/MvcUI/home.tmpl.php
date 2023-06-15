<?php


use SYRADEV\app\MvcUIController;

$degres = MvcUIController::huerotate();

// echo '<pre>';
// print_r($_SESSION['mvcRoutes']);
// echo '</pre>';
?>

<div class="container py-2 py-md-4 py-lg-5">
    <div class="row">
        <div class="col">
        <h1 class="d-flex justify-content-center">Dernière sorties</h1>
            <figure class="card position-relative bg-light-subtle py-3 p-0 p-lg-4 mt-4 mb-0 ms-xl-5 animate__animated animate__fadeIn" style="border: none;">
            
            <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
                  
                  <div class="carousel-inner">
                    <div class="carousel-item active" data-bs-interval="10000">
                    <div class="cards-wrapper">

                    </div>
                      <img src="<?= MvcUIController::assets('/imgs/Capture.JPG'); ?>" class="d-block w-100" alt="...">

                    </div>
                    <div class="carousel-item" data-bs-interval="2000">
                    <div class="cards-wrapper">

                    </div>
                      <img src="<?= MvcUIController::assets('/imgs/Capture2.JPG'); ?>" class="d-block w-100" alt="...">
                      
                    </div>
                    <div class="carousel-item">
                    <div class="cards-wrapper">

                    </div>
                      <img src="<?= MvcUIController::assets('/imgs/Capture3.JPG'); ?>" class="d-block w-100" alt="...">
                     
                    </div>
                  </div>
                  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                  </button>
                  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                  </button>
                </div>
            </figure>
        </div>
    </div>
</div>


<!-- <div class="container py-2 py-md-4 py-lg-5">
  <div class="row">
    <div class="col">
      <h1 class="d-flex justify-content-center">Suggestions</h1>
        <figure class="card position-relative bg-light-subtle py-3 p-0 p-lg-4 mt-4 mb-0 ms-xl-5 animate__animated animate__fadeIn" style="border: none;"> 
        <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">  
          <div class="carousel-inner">
            <div class="carousel-item active" data-bs-interval="10000">
              <img src="<?= MvcUIController::assets('/imgs/Capture.JPG'); ?>" class="d-block w-100" alt="...">
              <div class="cards-wrapper">

              </div>
            </div>
            <div class="carousel-item" data-bs-interval="2000">
              <img src="<?= MvcUIController::assets('/imgs/Capture2.JPG'); ?>" class="d-block w-100" alt="...">
              <div class="cards-wrapper">
                
                </div>
            </div>
            <div class="carousel-item">
              <img src="<?= MvcUIController::assets('/imgs/Capture3.JPG'); ?>" class="d-block w-100" alt="...">
              <div class="cards-wrapper">
                
                </div>
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
        </figure>
    </div>
  </div>
</div> -->
