<?php

use SYRADEV\app\MvcUIController;


extract($header);
?>

<header id="mvcheader" class="row p-2 mb-3 border rounded-3">
<div class="d-flex justify-content-between bg-dark text-white">
    <div class="col-2 align-middle">
        <a href="<?= MvcUIController::getRoute('home'); ?>">
            <img src="<?= MvcUIController::assets($logo); ?>" class="w-100 animate__animated animate__fadeIn align-middle" alt="<?= $title; ?>">
        </a>
    </div>
    <div class="col-2 align-middle text-center">
        <h1 class="display-6 pt-3"><?= $toptitle; ?></h1>
    </div>

</div>
    
    <div class="d-flex justify-content-center align-items-center">
        <?php require_once MvcUIController::partial('/MvcUI/topmenu.part.php');?>
    </div>
</header>
