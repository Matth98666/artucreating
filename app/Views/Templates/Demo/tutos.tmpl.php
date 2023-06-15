<?php
/**
 * @var $data
 */
extract($data);
?>
<main class="container py-3">
    <div class="row">
        <div class="col">
            <h1 class="display-3 text-white mb-3">Liste des Annonces :</h1>
        </div>
    </div>
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
        <?php foreach ($data as $tuto) { extract($tuto); ?>
            <div class="col">
                <div class="card h-100 border-0 shadow">
                    <img src="/assets/imgs/<?= $image; ?>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title fw-bold"><?= $titre; ?></h5>
                        <p class="card-text"><?= $auteur_tuto; ?></p>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>
</main>


