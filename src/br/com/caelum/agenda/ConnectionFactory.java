package br.com.caelum.agenda;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

	public Connection getConnection() throws SQLException {
		System.out.print("[INFO] Conectando...");

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("[ERRO] Falha na conexao com o MySQL.");
			throw new SQLException(e);
		}
		System.out.println(" conectado!");
		return DriverManager.getConnection("jdbc:mysql://localhost/fj21",
				"root", "");
	}

}
