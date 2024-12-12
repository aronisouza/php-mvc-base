<?php

spl_autoload_register(function ($arquivo)
{
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
