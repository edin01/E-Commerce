package util;

import dados.Brinquedos;
import dados.Usuarios;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DadosDAO {
    private Connection connection;
	
	public DadosDAO() {
		try {
			this.connection = new util.ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
}
        
//        Métodos para categorias
        
        public void AddCategoria (Brinquedos brinquedos){
            try {
			String sql = "INSERT INTO Categorias (NomeCategoria) VALUES (?)";
			
			PreparedStatement stmt = connection.prepareStatement(sql);

			stmt.setString(1, brinquedos.getNomecategoria());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
        }
        
       public void RemoveCategoria(Brinquedos brinquedos) {
		String sql = "DELETE FROM Categorias WHERE idCategoria = ?";
		try {
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setInt(1, brinquedos.getIdcategoria());
			stmt.execute();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
       
       public void AlteraCategoria(Brinquedos brinquedos) {
		
		String sql = "UPDATE Categorias SET NomeCategoria = ? WHERE IdCategoria = ?";
		try {
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setString(1, brinquedos.getNomecategoria());
			stmt.setInt(2, brinquedos.getIdcategoria());

			stmt.execute();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
       
//       Métodos para os produtos
       
       public void AddProduto (Brinquedos brinquedos){
            try {
			String sql = "INSERT INTO Produtos (NomeProduto, Preço, Marca, IdCategoria, Descrição) VALUES (?,?,?,?,?)";
			
			PreparedStatement stmt = connection.prepareStatement(sql);

			stmt.setString(1, brinquedos.getNomebrinquedo());
                        stmt.setString(2, brinquedos.getPreço());
                        stmt.setString(3, brinquedos.getMarca());
                        stmt.setInt(4, brinquedos.getIdcategoria());
                        stmt.setString(5, brinquedos.getDescrição());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
        }
       
       public void RemoveProduto(Brinquedos brinquedos) {
		String sql = "DELETE FROM Produtos WHERE IdProduto = ?";
		try {
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setInt(1, brinquedos.getIdbrinquedo());
			stmt.execute();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
       
       public void AlteraProduto(Brinquedos brinquedos) {
		
		String sql = "UPDATE Produtos SET NomeProduto = ?,  Preço = ?, Marca = ?, IdCategoria = ?, "
                        + "Descrição = ? WHERE IdProduto = ?";
		try {
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			
                        stmt.setString(1, brinquedos.getNomebrinquedo());
                        stmt.setString(2, brinquedos.getPreço());
                        stmt.setString(3, brinquedos.getMarca());
                        stmt.setInt(4, brinquedos.getIdcategoria());
                        stmt.setString(5, brinquedos.getDescrição());
                        stmt.setInt(6, brinquedos.getIdbrinquedo());

			stmt.execute();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
       
       
       // Métodos para os usuarios
       
       
       public void AddUsuario (Usuarios usuarios){
            try {
			String sql = "INSERT INTO Usuarios (Nome, Senha, Email) VALUES (?,?,?)";
			
			PreparedStatement stmt = connection.prepareStatement(sql);

			stmt.setString(1, usuarios.getLogin());
                        stmt.setString(2, usuarios.getSenha());
                        stmt.setString(3, usuarios.getEmail());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
        }
       
       public void AlterarUsuario (Usuarios usuarios){
            try {
			String sql = "UPDATE Usuarios SET Nome = ?, Senha = ?, Email = ? WHERE Idusuario = ?";
			
			PreparedStatement stmt = connection.prepareStatement(sql);

			stmt.setString(1, usuarios.getLogin());
                        stmt.setString(2, usuarios.getSenha());
                        stmt.setString(3, usuarios.getEmail());
                        stmt.setInt(4, usuarios.getId());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
        }
       
       public void RemoverUsuario (Usuarios usuarios){
            try {
			String sql = "DELETE FROM Usuarios WHERE Idusuario = ?";
			
			PreparedStatement stmt = connection.prepareStatement(sql);

			stmt.setInt(1, usuarios.getId());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
        }
       
       public String VerificaUsuario (Usuarios usuarios){
           String status = "";
           
            try {
			String sql = "SELECT * FROM Usuarios WHERE Nome = ? AND Senha = ?";
			
                        
			PreparedStatement stmt = connection.prepareStatement(sql);

			stmt.setString(1, usuarios.getLogin());
                        stmt.setString(2, usuarios.getSenha());
                        ResultSet rs = stmt.executeQuery();
                        
                        if(rs.next()){

			status = "true";
                        
                        }
                        
                        } catch (SQLException e) {
			throw new RuntimeException(e);
		}
            return status;
        }
       
       
       
       
	}


