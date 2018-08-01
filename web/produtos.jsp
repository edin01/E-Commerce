<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Produtos</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/main.css">
        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
       <nav class="navbar navbar-light" style="background-color: #46b8da">
           <a href="administrativa.jsp"><img src="img/train.png" width="50" height="50"></a>
           Hott'oys - Área administrativa!
           <a href="administrativa.jsp"><img src="img/train.png" width="50" height="50"></a>
           
           <div class="dropdown pull-right">
            <a data-toggle="dropdown"><img src="img/crown.png" width="50" height="50"></a>
            <ul class="dropdown-menu">
                <div class="formadmin1">
                    Bem vindo a Área administrativa!<br>
                    Caso queira sair, clique no botão abaixo.<br>
                 
                 <button type="button" class="btn-warning" onclick="location.href='index.jsp'">Sair</button>
                </div>
            </ul>
            </div>
       </nav>
       
  <div class="container recente">
  <h1>Produtos</h1>           
  <table class="table table-striped">
      <thead>
      <tr>
        <th>Código do produto</th>
        <th>Nome</th>
        <th>Preço</th>
        <th>Marca</th>
        <th>Descrição</th>
        <th>Código da categoria</th>
        <th>Ações</th>
      </tr>
    </thead>
<% 
    int idproduto;
    String nomeproduto;
    String preço;
    String marca;
    String descricao;
    String idcat;
    
    String url = "jdbc:mysql://localhost/brinquedos";
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/brinquedos",
				"root", "");
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select * from Produtos");
    while(rs.next()){
        idproduto = rs.getInt("IdProduto");
        nomeproduto = rs.getString("NomeProduto");
        preço = rs.getString("Preço");
        marca = rs.getString("Marca");
        descricao = rs.getString("Descrição");
        idcat = rs.getString("IdCategoria");
%>
    <tbody>
        <tr>
        <td><%=idproduto%></td>
        <td><%=nomeproduto%></td>
        <td><%=preço%></td>
        <td><%=marca%></td>
        <td><%=descricao%></td>
        <td><%=idcat%></td>
        <td><button type="button" class="btn btn-primary" onclick="location.href='alterarproduto.jsp?idproduto=<%=idproduto%>&nomeproduto=<%=nomeproduto%>&preco=<%=preço%>&marca=<%=marca%>&descricao=<%=descricao%>&idcat=<%=idcat%>'">Alterar</button></td>
        <td><button type="button" class="btn btn-danger" onclick="location.href='deletaprodutos.jsp?idproduto=<%=idproduto%>&nomeproduto=<%=nomeproduto%>&preco=<%=preço%>&marca=<%=marca%>&descrição=<%=descricao%>&idcat=<%=idcat%>'">Excluir</button></td>
        </tr>
    </tbody>
<% }
    
    rs.close();
    stmt.close();
    conn.close();

%>     
  </table>
  
  <div class="meio">
      <button type="button" class="btn btn-sucess" onclick="location.href='addproduto.jsp'">Novo produto</button><br><br>
     <button type="button" class="btn btn-primary" onclick="location.href='administrativa.jsp'">Voltar</button>
  </div>
  
</div>
            
        <footer class="footer">
            Atura ou Surta
        </footer>
    </body>
</html>
