## Class Read
Executa uma leitura simplificada com Prepared Statments.<br>
Basta informar o nome da tabela, os termos da seleção e uma analize em cadeia (ParseString) para executar.<br>

STRING `$Tabela` = Nome da tabela<br>
STRING `$Termos` = WHERE | ORDER | LIMIT :limit | OFFSET :offset<br>
STRING `$ParseString` = link={$link}&link2={$link2}

ExeRead(`$Tabela`, `$Termos` = null, `$ParseString` = null);

Exemplo
```php
$pesquisa = new Read();
$pesquisa->ExeRead('notas_itens', 'WHERE nota_id=:nota, nota_valor=:valor', "nota={$idNota}&valor={$valorNota}");

/* Ou passando e query completa */
$r->FullRead('SELECT * FROM livros WHERE id=200');
$dados = $r->getResult();

```

## Class Create 

Principal função `ExeCreate` => Executa um cadastro simplificado no banco de dados utilizando prepared statements.<br><br>
Basta informar o nome da tabela e um array atribuitivo com nome da coluna e valor!<br>
STRING  `$Tabela`  = Informe o nome da tabela no banco!<br>
ARRAY   `$Dados`   = Informe um array atribuitivo. ( Nome Da Coluna => Valor ).

ExeCreate(`$Tabela`, array `$Dados`);

Exemplo
```php
$cadNota = new Create();
$cadNota->ExeCreate('nota_fiscal', $Form);

$Form = [
      'loja' => filter_input(INPUT_POST, 'loja', FILTER_DEFAULT),
      'loja_id' => filter_input(INPUT_POST, 'loja_id', FILTER_DEFAULT),
      'desconto' => filter_input(INPUT_POST, 'desconto', FILTER_DEFAULT),
      'valor' => filter_input(INPUT_POST, 'valor', FILTER_DEFAULT),
      'forma_pagamento' => filter_input(INPUT_POST, 'forma_pagamento', FILTER_DEFAULT),
      'parcela_outro' => 'filid',
      'data_compra' => filter_input(INPUT_POST, 'data_compra', FILTER_DEFAULT)
    ];
```
## Class Update

Executa uma atualização simplificada com Prepared Statments. <br>
Basta informar o nome da tabela, os dados a serem atualizados em um Array Atribuitivo, as condições e uma analize em cadeia (ParseString) para executar.

ExeUpdate(`$Tabela`, array `$Dados`, `$Termos`, `$ParseString`);

STRING `$Tabela` = Nome da tabela<br>
ARRAY `$Dados` = [ NomeDaColuna ] => Valor ( Atribuição )<br>
STRING `$Termos` = WHERE coluna = :link AND.. OR..<br>
STRING `$ParseString` = link={$link}&link2={$link2}

Exemplo
```php
$ulp = new Update();
$ulp->ExeUpdate('receita', $formItem, "WHERE id=:id", "id={$ed_id}");

$formItem = [
      'loja' => filter_input(INPUT_POST, 'loja', FILTER_DEFAULT),
      'loja_id' => filter_input(INPUT_POST, 'loja_id', FILTER_DEFAULT),
      'desconto' => filter_input(INPUT_POST, 'desconto', FILTER_DEFAULT),
      'valor' => filter_input(INPUT_POST, 'valor', FILTER_DEFAULT),
      'forma_pagamento' => filter_input(INPUT_POST, 'forma_pagamento', FILTER_DEFAULT),
      'parcela_outro' => 'filid',
      'data_compra' => filter_input(INPUT_POST, 'data_compra', FILTER_DEFAULT)
    ];
```

## Class Delete

Deleta o registro informado pelo id ou quaquer outra condição.

STRING `$Tabela` = Nome da tabela<br>
STRING `$Termos` = WHERE coluna = :link AND.. OR..<br>
STRING `$ParseString` = link={$link}&link2={$link2}<br>

ExeDelete(`$Tabela`, `$Termos`, `$ParseString`);

Exemplo
```php
$del = new Delete();
$del->ExeDelete('notas_itens',"WHERE id=:id", "id={$ap_id}");
```
