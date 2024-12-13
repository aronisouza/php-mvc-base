<?php
session_start();
if (!isset($_SESSION['Id'])) {
  header("Location: ./login.php");
  exit();
}
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>PHP com MVC</title>
  <link href="./bootstrap.min.css" rel="stylesheet">
</head>

<body>
<div class="container">
  <?php $this->carregarView($view, $dados);?>
</div>

<script src="./bootstrap.bundle.min.js"></script>
<script type="text/javascript">
  document.addEventListener("DOMContentLoaded", function() {
    document.addEventListener("keydown", function(event) {
      // Encontra o formulário mais próximo
      const formElement = event.target.closest("form");
      if (formElement && event.key === "Enter" && event.target.type !== "textarea") event.preventDefault();
    });
  });
</script>
</body>
</html>