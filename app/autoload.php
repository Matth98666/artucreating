<?php


require_once __DIR__ . '/Classes/MvcUIController.php';
require_once __DIR__ . '/Classes/PdoMySQL.php';
require_once __DIR__ . '/Classes/DemoController.php';

use SYRADEV\app\MvcUIController;
$mvcUI = MvcUIController::getInstance();
$mvcUI->cacheRoutes();