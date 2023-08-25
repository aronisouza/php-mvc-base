<?php

class homeController extends Controller
{
  public function index()
  {
    Conexao::getConn();
    $r = new Read();
    //$r->ExeRead('livros');
    $r->FullRead('SELECT * FROM livros WHERE id=200');
    $dados = $r->getResult();

    //getPre($dados);
    $this->carregarTemplate('home', $dados);
  }
}
