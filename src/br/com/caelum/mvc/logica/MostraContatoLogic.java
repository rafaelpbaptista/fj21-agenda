package br.com.caelum.mvc.logica;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class MostraContatoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		long id = Long.parseLong(request.getParameter("id"));

		Connection connection = (Connection) request.getAttribute("conexao");
		ContatoDao dao = new ContatoDao(connection);

		// Contato contato = new ContatoDao().buscaPorId(id);
		Contato contato = dao.buscaPorId(id);

		request.setAttribute("contato", contato);

		return "altera-contato.jsp";
	}

}
