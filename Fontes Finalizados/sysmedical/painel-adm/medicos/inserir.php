<?php 

require_once("../../conexao.php");

$nome = $_POST['nome'];
$especialidade = $_POST['especialidade'];
$crm = $_POST['crm'];
$cpf = $_POST['cpf'];
$telefone = $_POST['telefone'];
$email = $_POST['email'];
$turno = $_POST['turno'];

	//VERIFICAR SE O MÉDICO JÁ ESTÁ CADASTRADO
$res_c = $pdo->query("select * from medicos where cpf = '$cpf'");
$dados_c = $res_c->fetchAll(PDO::FETCH_ASSOC);
$linhas = count($dados_c);
if($linhas == 0){
	$res = $pdo->prepare("INSERT into medicos (nome, especialidade, crm, cpf, telefone, email, turno) values (:nome, :especialidade, :crm, :cpf, :telefone, :email, :turno) ");

	$res->bindValue(":nome", $nome);
	$res->bindValue(":especialidade", $especialidade);
	$res->bindValue(":crm", $crm);
	$res->bindValue(":cpf", $cpf);
	$res->bindValue(":telefone", $telefone);
	$res->bindValue(":email", $email);
	$res->bindValue(":turno", $turno);

	$res->execute();


	echo "Cadastrado com Sucesso!!";

}else{
	echo "Este Médico já está cadastrado!!";
}

?>