<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Projeto fj21-agenda</title>
	</head>
	<body>
		<c:import url="cabecalho.jsp" />
	
		Formulario para alteração de contatos:
		<br />
		<form action="mvc" method="POST">
			Id: <input type="text" name="id" value="${contato.id}" /><br />
			Nome: <input type="text" name="nome" value="${contato.nome}" /><br />
			E-mail: <input type="text" name="email" value="${contato.email}" /><br />
			Endereço: <input type="text" name="endereco" value="${contato.endereco}" /><br />
			Data de Nascimento: <input type="text" name="dataNascimento" 
					value="<fmt:formatDate value="${contato.dataNascimento.time}"
						pattern="dd/MM/yyyy" />" /><br />
			<input type="hidden" name="logica" value="AlteraContatoLogic" />
			<input type="submit" value="Enviar" />
		</form>
	
		<c:import url="rodape.jsp" />
	</body>
</html>