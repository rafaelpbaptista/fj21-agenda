<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Projeto fj21-agenda</title>
</head>
<body>
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />
	<c:import url="cabecalho.jsp" />
	<table border="0">
		<tr bgcolor="9C9C9C">
			<th>Id</th>
			<th>Nome</th>
			<th>Email</th>
			<th>Endereço</th>
			<th>Data de Nascimento</th>
		</tr>
		<!-- percorre contatos montando as linhas da tabela -->
		<c:forEach var="contato" items="${dao.lista}" varStatus="id">
			<tr bgcolor="#${id.count % 2 == 0 ? 'C6E2FF' : 'E8E8E8' }">
				<td>${id.count}</td>
				<td>${contato.nome}</td>
				<%-- <td>${contato.email}</td> --%>
				<td><c:if test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>
					</c:if> <c:if test="${empty contato.email}"> 
						E-mail não informado
					</c:if></td>
				<td>${contato.endereco}</td>
				<%-- <td>${contato.dataNascimento.time}</td> --%>
				<td><fmt:formatDate value="${contato.dataNascimento.time}"
					pattern="dd/MM/yyyy" /></td>
			</tr>
		</c:forEach>
	</table>
	<c:import url="rodape.jsp" />
</body>
</html>