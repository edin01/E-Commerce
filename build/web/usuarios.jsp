<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuários</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/main.css">
        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
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
  <h1>Usuários</h1>           
  <table class="table table-striped">
      <thead>
      <tr>
        <th>Id do Usuário</th>
        <th>Nome</th>
        <th>Senha</th>
        <th>Email</th>
        <th>Ações</th>
      </tr>
    </thead>
<% 
    int iduser;
    String nomeuser;
    String senha;
    String email;
    
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/brinquedos",
				"root", "");
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select * from Usuarios");
    while(rs.next()){
        iduser = rs.getInt("Idusuario");
        nomeuser = rs.getString("Nome");
        senha = rs.getString("Senha");
        email = rs.getString("Email");
%>
    <tbody>
      <tr>
        <td><%=iduser%></td>
        <td><%=nomeuser%></td>
        <td><%=senha%></td>
        <td><%=email%></td>
        <td><button type="button" class="btn btn-primary" onclick="location.href='alterarusuario.jsp?iduser=<%=iduser%>&nomeuser=<%=nomeuser%>&senha=<%=senha%>&email=<%=email%>'">Alterar</button></td>
        <td><button type="button" class="btn btn-danger" onclick="location.href='deletausuarios.jsp?iduser=<%=iduser%>&nomeuser=<%=nomeuser%>&senha=<%=senha%>&email=<%=email%>'">Excluir</button></td>
    </tr>
    </tbody>
<% }
    
    rs.close();
    stmt.close();
    conn.close();

%>     
  </table>
  
  <div class="meio">
      <button type="button" class="btn btn-sucess" onclick="location.href='addusuario.jsp'">Novo Usuário</button><br><br>
     <button type="button" class="btn btn-primary" onclick="location.href='administrativa.jsp'">Voltar</button>
  </div>
  
</div>
            
        <footer class="footer">
            Atura ou Surta
        </footer>
    </body>
</html>
