<?php

class homeController extends Controller
{
  public function index()
  {
    $r = new Read;
    $r->FullRead('SELECT * FROM livros WHERE id=6');
    $dados = $r->getResult();
    $this->carregarTemplate('home', $dados[0]);
  }
}
