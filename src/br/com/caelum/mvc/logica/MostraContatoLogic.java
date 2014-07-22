package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class MostraContatoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		long id = Long.parseLong(request.getParameter("id"));

		Contato contato = new ContatoDao().buscaPorId(id);
		request.setAttribute("contato", contato);

		return "altera-contato.jsp";
	}

}
