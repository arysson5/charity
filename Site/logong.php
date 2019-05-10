<!DOCTYPE html>
<html>
<head>
	<title>Pagina Inicial</title>
</head>
<body>

<?php
$nome = $_POST["nome"];
$cnpj  = $_POST['cnpj'];
$senha = $_POST['senha_'];
$confirm = $_POST['csenha'];
$email = $_POST['email'];
$cpf = $_POST['cpf'];
$tel = $_POST['tel'];
$cat = $_POST['cat'];

echo 'Seus seguintes dados foram cadastrados' . '<br \>';
echo'Representante: ' .$nome . '<br \>';
echo 'CNPJ:' .$usuario . '<br \>';
echo 'Email:' .$email . '<br \>';
echo 'Cpf:' .$cpf . '<br \>';
echo 'Telefone'.$tel;





?>


 </body>
 </html>