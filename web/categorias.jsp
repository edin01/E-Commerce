<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Categorias</title>
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
  <h1>Categorias</h1>
  <h3>Você não pode apagar categorias com produtos dentro.</h3><br>
  <table class="table table-striped">
      <thead>
      <tr>
        <th>Nome da Categoria</th>
        <th>Id da Categoria</th>
        <th>Ações</th>
      </tr>
    </thead>
<% 
    int idcategoria;
    String nomecategoria;
    
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/brinquedos",
				"root", "");
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select * from Categorias");
    while(rs.next()){
        idcategoria = rs.getInt("IdCategoria");
        nomecategoria = rs.getString("NomeCategoria");
%>
    <tbody>
      <tr>
        <td><%=nomecategoria%></td>
        <td><%=idcategoria%></td>
        <td><button type="button" class="btn btn-primary" onclick="location.href='alterarcategoria.jsp?idcategoria=<%=idcategoria%>&nomecategoria=<%=nomecategoria%>'">Alterar</button></td>
        <td><button type="submit" class="btn btn-danger" onclick="location.href='deletacategoria.jsp?idcategoria=<%=idcategoria%>&nomecategoria=<%=nomecategoria%>'">Excluir</button></td>
    </tr>
    </tbody>
<% }
    
    rs.close();
    stmt.close();
    conn.close();

%>     
  </table>
  
  <div class="meio">
      <button type="button" class="btn btn-sucess" onclick="location.href='addcategoria.jsp'">Nova categoria</button><br><br>
     <button type="button" class="btn btn-primary" onclick="location.href='administrativa.jsp'">Voltar</button>
  </div>
  
</div>
            
        <footer class="footer">
            Atura ou Surta
        </footer>
    </body>
</html>
