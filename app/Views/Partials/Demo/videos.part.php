<?php

/**
 * @var $data
 */
extract($data);

?>

<main class="container my-5 py-5">
    <div class="row">

    </div>
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
        <?php foreach ($data as $video) { extract($video); ?>
            <div class="col">
                <div class="card h-100 border-0 shadow">
                    
                    <img src="/assets/imgs/<?= $image; ?>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title fw-bold"><?= $video; ?></h5>
                        <p class="card-text"><?= $duree_video; ?></p>
                    </div>
                     <!-- <div class="card-footer bg-white border-0">
                        <a href="/?annonce=<?= $uid_annonce; ?>" class="btn btn-primary bg-gradient px-5 float-end stretched-link">Détails</a>
                    </div>  -->
                </div>
            </div>
        <?php } ?>
    </div>
</main>