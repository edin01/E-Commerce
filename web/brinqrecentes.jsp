<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Adicionados recentemente</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/main.css">
        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    
        <nav class="navbar navbar-light" style="background-color: #46b8da">
           <a href="javascript:history.back()"><img src="img/train.png" width="50" height="50"></a>
           Hott'oys
           <a href="javascript:history.back()"><img src="img/train.png" width="50" height="50"></a>
       </nav>

                        
                    <!-- Div para mostrar a aba de brinquedos adicionados recentemente -->
                    
                    <div class="container recente">
                          <div class="row">
<% 
    String nomeprod;
    String preçoprod;
    String descr;
    String marca;
    int idprod;
    
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/brinquedos",
				"root", "");
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select * from Produtos WHERE IdProduto > 12 ");
    while(rs.next()){
        nomeprod = rs.getString("NomeProduto");
        preçoprod = rs.getString("Preço");
        descr = rs.getString("Descrição");
        marca = rs.getString("Marca");
        idprod = rs.getInt("IdProduto");
%>

                        <div class="col-md-4">
                            <br><br>
                            Nome do produto: <%=nomeprod%><br>
                            Código: <%=idprod%><br>
                            Preço: <%=preçoprod%><br>
                            Marca: <%=marca%><br>
                            Descrição: <%=descr%><br>
                             <br>
                        </div>

<% }
    
    rs.close();
    stmt.close();
    conn.close();

%>    
                        </div>
                    </div>
                        
                    <div class="meio">   
                        <a href="javascript:history.back()"><button type="button" class="btn-primary">Voltar</button></a>
                    </div>
    
        <footer class="footer">
            Atura ou Surta
        </footer>
</html>
