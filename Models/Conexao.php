<?php
class Conexao
{
  private static $Host = HOST;
  private static $User = USER;
  private static $Pass = PASS;
  private static $Dbsa = DBSA;

  // PDO 
  private static $Connect = null;

  /**
   * Conecta com o banco de dados com o pattern singleton.
   * Retorna um objeto PDO
   */
  private static function Conectar()
  {
    try {
      if (self::$Connect == null) :
        $dsn = 'mysql:host=' . self::$Host . ';dbname=' . self::$Dbsa;
        $options = [PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES UTF8'];
        self::$Connect = new PDO($dsn, self::$User, self::$Pass, $options);
      endif;
    } catch (PDOException $e) {
      getMessage('danger',"<b>Erro ao Conectar:</b><br /> Mensagem: {$e->getMessage()}");
      die;
    }
    self::$Connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    return self::$Connect;
  }

  // Retorna um objeto PDO Singleton Pattern.
  static function getConn()
  {
    return self::Conectar();
  }
}
