package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

//	Classe que cria a conexao com o DB
	public Connection getConnection() throws SQLException {
		try {
//			Adicionar o JAR mysql-connector-java no projeto em:
//			Build Path > Configure Build Path > Aba "Libraries"> Add External JARs
//			Dica: sempre deixe o JAR dentro da pasta do projeto!
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new SQLException(e);
		}

//		Retorna uma conexao com o Ecommerce
		return DriverManager.getConnection("jdbc:mysql://localhost/brinquedos",
				"root", "591663");
	}
}
