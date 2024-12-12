<?php

class Core
{
  public function __construct()
  {
    $this->run();
  }

  public function run()
  {
    $parametros = array();
    if (isset($_GET['pag'])) {
      $url = htmlentities(addslashes($_GET['pag']));
      $url = filter_var($url, FILTER_SANITIZE_URL);
    }

    if (!empty($url)) {
      $url = explode('/', $url);
      $controller = $url[0] . 'Controller';
      array_shift($url);

      if (isset($url[0]) && !empty($url[0])) {
        $metodo = $url[0];
        array_shift($url);
      }
      else $metodo = 'index';

      if (count($url) > 0) $parametros = $url;

    } 
    else {
      $controller = 'homeController';
      $metodo = 'index';
    }

    $caminho = URL . "Controllers/" . $controller . ".php";

    if (!file_exists($caminho) && !method_exists($controller, $metodo)) {
      $controller = 'pag404Controller';
      $metodo = 'index';
    }

    if (class_exists($controller) && method_exists($controller, $metodo)) {
      $c = new $controller;
      call_user_func_array(array($c, $metodo), $parametros);
    } else {
      echo "Handle error: controller or method not found";
    }
  }
}