<?php

class Controller
{
  public $dados;

  public function __construct()
  {
    $this->dados = array();
  }

  public function carregarTemplate($view, $dadosModel = array())
  {
    $this->dados = $dadosModel;
    require 'Views/template.php';
  }

  public function carregarView($view, $dadosModel = array())
  {
    extract($dadosModel);
    require 'Views/' . $view . '.php';
  }
}
