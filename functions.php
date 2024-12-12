<?php

// CONFIGRAÇÕES DO BANCO
define('HOST', 'localhost');
define('USER', 'root');
define('PASS', '');
define('DBSA', 'test');
define('URL', 'http://localhost/php-mvc-base/');

// Apenas para verificar alguns arrays formatado
function getPre($string)
{
  echo '<pre>';
  print_r($string);
  echo '</pre>';
}

/**
 * TIPOS:
 *- primary, secondary, success, danger, warning, info, light e dark 
*/
function getMessage($tipo, $text)
{
  echo "
  <div class='alert alert-{$tipo} mx-5 alert-dismissible fade show mt-3' role='alert'>
    <p>
      {$text}
    </p>
    <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
  </div>
  ";
}

/**
 *- $tipo: 0 -> criptografa
 *- $tipo: 1 -> descriptografa
 *- $caracter: Texto/Número
*/
function getCrip($caracter, $tipo) {
  $key = 'FiliD_Danela-Gatins';
  $iv = '2609105565050936';
  $method = 'AES-256-CBC';
  if ($tipo == 0) {
      $encrypted = openssl_encrypt($caracter, $method, $key, 0, $iv);
      $safeEncrypted = strtr(base64_encode($encrypted), '+/', '-_');
      return $safeEncrypted;
  } elseif ($tipo == 1) {
      $decoded = base64_decode(strtr($caracter, '-_', '+/'));
      $decrypted = openssl_decrypt($decoded, $method, $key, 0, $iv);
      return $decrypted;
  } 
}
