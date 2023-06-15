<?php
/**
 * MvcUI Menu du haut
 *
 * Application MvcUI
 *
 * @package    MvcUI
 * @author     Regis TEDONE
 * @email      syradev@proton.me
 * @copyright  Syradev 2023
 * @license    https://www.gnu.org/licenses/gpl-3.0.en.html  GNU General Public License
 * @version    1.3.0
 */

use SYRADEV\app\MvcUIController;

?>

<nav class="navbar navbar-expand-lg bg-danger " id="top-menu">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link<?= MvcUIController::isActive(['home']); ?>"
                       href="<?= MvcUIController::getRoute('home'); ?>">Accueil</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link <?= MvcUIController::isActive(['tuto']); ?>" 
                       href="<?= MvcUIController::getRoute('tutos'); ?>">
                        Tutos
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle <?= MvcUIController::isActive(['videos','audios','photos']); ?>" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false">
                        Créations
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a class="nav-link<?= MvcUIController::isActive(['video']); ?>"
                               href="<?= MvcUIController::getRoute('videos'); ?>">Vidéo</a>
                        </li>
                        <li>
                            <a class="nav-link<?= MvcUIController::isActive(['audio']); ?>"
                               href="<?= MvcUIController::getRoute('audios'); ?>">Audio</a>
                        </li>
                        <li>
                            <a class="nav-link<?= MvcUIController::isActive(['photo']); ?>"
                               href="<?= MvcUIController::getRoute('photos'); ?>">Photo</a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" role="button">
                        Vos contenus
                    </a>

                </li>
                <li class="nav-item">
                    <a class="nav-link<?= MvcUIController::isActive(['users']); ?>"
                        href="<?= MvcUIController::getRoute('users'); ?>">Utilisateurs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?= MvcUIController::getRoute('login'); ?>">Se connecter</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
