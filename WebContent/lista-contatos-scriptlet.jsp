<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page
	import="java.util.*,
             br.com.caelum.agenda.dao.*,
             br.com.caelum.agenda.modelo.*, java.text.SimpleDateFormat"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Projeto fj21-agenda</title>
</head>
<body>
	<table>
		<tr>
			<th>Nome</th>
			<th>Email</th>
			<th>Endereço</th>
			<th>Data de Nascimento</th>
		</tr>
		<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
			for (Contato contato : contatos) {
		%>
		<tr>
			<td><%=contato.getNome()%></td>
			<td><%=contato.getEmail()%></td>
			<td><%=contato.getEndereco()%></td>
			<%
				String data = new SimpleDateFormat("dd/MM/yyyy").format(contato
							.getDataNascimento().getTime());
			%>
			<%-- Alterado no exercicio opcional 6.4 --%>
			<%-- <td><%=contato.getDataNascimento().getTime()%></td> --%>
			<td><%=data%></td>
		</tr>
		<%
			}
		%>
	</table>

</body>
</html>