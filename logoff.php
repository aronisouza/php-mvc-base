<?php

// Inicializa a sessão
session_start();

// Apaga todas as variáveis da sessão
$_SESSION = array();

// Finalmente, destrói a sessão
session_destroy();

if (!isset($_SESSION['Id'])) {
  header("Location: /login.php");
  exit();
}