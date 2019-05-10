<!DOCTYPE html>
<html>
<head>
	<title>Pagina Inicial</title>
</head>
<body>

<?php
$nome = $_POST["nome"];
$usuario  = $_POST['nomeusuario'];
$senha = $_POST['senha'];
$confirm = $_POST['confirmsenha'];
$email = $_POST['email'];
$cpf = $_POST['CPF'];
$tel = $_POST['telefone'];


echo 'Seus seguintes dados foram cadastrados' . '<br \>';
echo'Nome completo:' .$nome . '<br \>';
echo 'Nome de usuario:' .$usuario . '<br \>';
echo 'Email:' .$email . '<br \>';
echo 'Cpf:' .$cpf . '<br \>';
echo 'Telefone'.$tel;




$msg = 'Nome: '.$nome.' Usuario: '.$usuario.' Email: '.$email.' CPF: '.$cpf.' Telefone: '.$tel;
$destinatario = 'aryssonmenezes@gmail.com';
$remetente= 'aryjr41@gmail.com';
$assunto = 'Pedido de cadstro';
mail($remetente, $assunto, $msg ,'from:aryssonmenezes@gmail.com');

function conectar(){
	$server = "localhost";
	$user = "root";
	$pass = "etecia";
	$db = "charity";
	$conexao = mysqli_connect($server, $user,$pass, $db);
	return $conexao;
}
if (!$conexao ) {
	# code...
	die("Falha de conexão". mysqli_connect_error());
}
$query = "INSERT INTO doador values ($nome,$usuario,$cpf,$email, $senha$tel);";

if ($conexao - >query ($query)== true) {
	# code...
	echo 
}
else {
	echo "erro na ao salvar dados";
}
mysqli_close($conexao);
?>


 </body>
 </html>