<?php

session_start();
require 'autoload.php';
require_once 'functions.php';

  if (isset($_SESSION['Id'])) {
    header("Location: " . URL);
    exit();
  }

  if (isset($_POST['Login']) && isset($_POST['Senha']))
  {
    $dados = [
      'email' => filter_input(INPUT_POST, 'Login', FILTER_DEFAULT),
      'password' => getCrip(filter_input(INPUT_POST, 'Senha', FILTER_DEFAULT),0)
    ];

    $r = new Read;
    $r->ExeRead("user", 'WHERE email=:login AND password=:senha', "login={$dados['email']}&senha={$dados['password']}");

    if($r->getRowCount()) 
    {
      session_start();
      $_SESSION['Id'] = $r->getResult()[0]['id'];
      $_SESSION['Email'] = $r->getResult()[0]['email'];
      $_SESSION['Level'] = $r->getResult()[0]['level'];

      header("Location: " . URL.'home');
      exit();
    }
    else {
      getMessage('danger', "Usuário não encontrado!");
    }
  }

?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AS Sites - Login</title>
  <link href="bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #bbc9de;
      color: #000;
    }
  </style>

</head>

<body>
<div class="position-absolute top-50 start-50 translate-middle">
  
  <form class="needs-validation" id="loginForm" method="post">

    <div class="col-md">
      <label for="Login" class="form-label">Usuário</label>
      <div class="input-group">
        <span class="input-group-text px-2" id="inputGroupPrepend">@</span>
        <input type="text" class="form-control" name="Login" aria-describedby="inputGroupPrepend" required>
        <div class="invalid-feedback">
          Por favor informar o usuário.
        </div>
      </div>
    </div>

    <div class="col-md">
      <label for="Senha" class="form-label">Senha de Acesso</label>
      <div class="input-group">
        <span class="input-group-text" id="inputGroupPrepend">#</span>
        <input type="password" class="form-control"name="Senha" aria-describedby="inputGroupPrepend" required>
        <div class="invalid-feedback">
          Digite sua senha.
        </div>
      </div>
    </div>

    <div class="col-12 mt-2 d-flex justify-content-center">
      <button type="submit" class="btn btn-outline-success" name="logar">Logar</button>
    </div>

  </form>

</div>
<script src="bootstrap.bundle.min.js"></script>
</body>
</html>
