package br.com.caelum.agenda.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/contador")
public class ContadorServlet extends HttpServlet {

	private int contador = 0; // variavel de instância

	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		contador++; // a cada requisição a mesma variável é incrementada

		PrintWriter out = response.getWriter();

		out.println("<html>");
		out.println("<body>");
		out.println("<h1>Contador agora e: " + contador + "</h1>");
		out.println("</body>");
		out.println("</html>");
	}
}
