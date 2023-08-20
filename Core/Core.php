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
    }

    if (!empty($url)) {
      $url = explode('/', $url);
      $controller = $url[0] . 'Controller';
      array_shift($url);

      if (isset($url[0]) && !empty($url[0])) {
        $metodo = $url[0];
        array_shift($url);
      } else {
        $metodo = 'index';
      }

      if (count($url) > 0) {
        $parametros = $url;
      }
    } else {
      $controller = 'homeController';
      $metodo = 'index';
    }

    $caminho = 'php/php-mvc/Controllers/' . $controller . '.php';

    // aqui futuramente criar a página 404
    // $controller = '404Controller';
    if (!file_exists($caminho) && !method_exists($controller, $metodo)) {
      $controller = 'homeController';
      $metodo = 'index';
    }

    $c = new $controller;
    call_user_func_array(array($c, $metodo), $parametros);
  }
}
