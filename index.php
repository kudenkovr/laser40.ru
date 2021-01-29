<?php
require_once '../rk-light/autoloader.php';

$rk = new RK(__DIR__);

$rk->config->set($rk->getConfig('core/config/config.php'));
$rk->connectDB();

$rk->router->routeFile('routes.php');
