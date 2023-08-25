<?php

spl_autoload_register(function ($arquivo) {

  if (file_exists('Controllers/' . $arquivo . '.php')) {
    require 'Controllers/' . $arquivo . '.php';
  }

  if (file_exists('Core/' . $arquivo . '.php')) {
    require 'Core/' . $arquivo . '.php';
  }

  if (file_exists('Models/' . $arquivo . '.php')) {
    require 'Models/' . $arquivo . '.php';
  }

  if (file_exists($arquivo . '.php')) {
    require $arquivo . '.php';
  }

});

// CONFIGRAÇÕES DO BANCO
define('HOST', 'localhost');
define('USER', 'root');
define('PASS', '');
define('DBSA', 'livros');

// Apenas para verificar alguns arrays :: Uso adm
function getPreA(array $string)
{
  echo '<pre>';
  print_r($string);
  echo '</pre>';
}

function getPre($string)
{
  echo '<pre>';
  print_r($string);
  echo '</pre>';
}

/**
 * FLDmsg :: Exibe mensagens na tela
 * tipos de janelas:
 * 
 * success, info, warning e danger
 */
function FLDmsg($msg, $msgTipo, $ErrDie = null)
{
  echo "
    <div class=\"alert alert-{$msgTipo} alert-dismissible fade show\" role=\"alert\">
      {$msg}
      <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button>
    </div>
    ";
  if ($ErrDie) :
    die;
  endif;
}
