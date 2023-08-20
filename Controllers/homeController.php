<?php

class homeController extends Controller
{
  public function index()
  {
    Conexao::getConn();
    $r = new Read();
    //$r->ExeRead('livros');
    $r->FullRead('SELECT autores FROM livros WHERE id=7');
    $dados = $r->getResult();
    $this->carregarTemplate('home', $dados);
  }
}
