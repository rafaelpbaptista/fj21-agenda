<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Projeto fj21-agenda</title>
	<link href="css/jquery.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	<h1>Adiciona Contatos</h1>
	<hr />
	<form action="adicionaContato" method="POST">
		Nome: <input type="text" name="nome" /><br /> 
		E-mail: <input type="text" name="email" /><br />
		Endereço: <input type="text" name="endereco" /><br />
		<%-- Data Nascimento: <input type="text" name="dataNascimento" /> --%>
		Data Nascimento: <caelum:campoData id="dataNascimento" /><br /> 
		<input type="submit" value="Gravar" />
	</form>
	<c:import url="rodape.jsp" />
</body>
</html>