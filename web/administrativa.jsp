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
        <title>Administração</title>
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
                <div class="col-md-4">
                    <div class="list-group">
                        <a href="#" class="list-group-item disabled">Brinquedos</a>

                        <% 
    String nomecategoria;
    int id;
    
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/brinquedos",
				"root", "");
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select * from Categorias");
    while(rs.next()){
        nomecategoria = rs.getString("NomeCategoria");
        id = rs.getInt("IdCategoria");
%>
                    
                    <a href="#" class="list-group-item" id="<%=id%>" onclick="Sessão(this)"><%=nomecategoria%></a>

<% }
        
    rs.close();
    stmt.close();
    conn.close();
%>  
                    <a href="#" class="list-group-item" id="90" onclick="Sessão(this)">Todos</a>
                        
                        <br><br>
                        <a href="#" class="list-group-item disabled">Administração</a>
                        <a href="categorias.jsp" class="list-group-item">Categorias</a>
                        <a href="produtos.jsp" class="list-group-item">Produtos</a>
                        <a href="usuarios.jsp" class="list-group-item">Usuários</a>
                    </div>
                </div>
                <div class="col-md-8" id="brinquedos">                   
                    
                    <!-- Div para mostrar a aba de bonecos -->
                    
                    <div id="bonecos" style="display:block">
                        
                        <div class="row">
                        <div class="col-md-4">
                            <img src="img/boneca1.jpg" width="200" height="150"><br><br>
                            Boneca Docinho De Bebe<br>
                            R$ 64,89<br>
                            <a href="brinquedo1.jsp" class="btn-primary">Saiba mais</a><br>
                        </div>

                        <div class="col-md-4">
                            <img src="img/boneco2.png" width="200" height="150"><br><br>
                            Bonecos Turma Super Mario Bros 6 Peças<br>
                            R$ 89,90<br>
                            <a href="brinquedo2.jsp" class="btn-primary">Saiba mais</a><br>
                        </div>

                        <div class="col-md-4">
                            <img src="img/boneca3.png" width="200" height="150"><br><br>
                            Boneca Barbie Princesa Penteados Mágicos<br>
                            R$ 109,30<br>
                            <a href="brinquedo3.jsp" class="btn-primary">Saiba mais</a><br>
                        </div>
                        </div>
                    </div>
                    
                    <!-- Div para mostrar a aba de carrinhos -->
                    
                    <div id="carrinhos" style="display:block">
                        <div class="row">
                        <div class="col-md-4">
                            <img src="img/carro1.png" width="200" height="150"><br><br>
                            Carro Land Evok Artoys<br>
                            R$ 7,99<br>
                             <a href="brinquedo4.jsp" class="btn-primary">Saiba mais</a><br>
                        </div>

                        <div class="col-md-4">
                            <img src="img/carro3.png" width="200" height="150"><br><br>
                            Carrinho Pick Up Vision Tuning<br>
                            R$ 38,84<br>
                             <a href="brinquedo5.jsp" class="btn-primary">Saiba mais</a><br>
                        </div>

                        <div class="col-md-4">
                            <img src="img/carro2.jpg" width="200" height="150"><br><br>
                            Kit com 3 Veículos Carros<br>
                            R$ 179,90<br>
                             <a href="brinquedo6.jsp" class="btn-primary">Saiba mais</a><br>
                        </div>
                        </div>    
                    </div>
                    
                    <!-- Div para mostrar a aba de jogos de mesa -->
                    
                    <div id="tabuleiros" style="display:block">
                        <div class="row">
                        <div class="col-md-4">
                            <img src="img/jogo1.png" width="200" height="150"><br><br>
                            Jogo Pie Face!<br>
                            R$ 107,70<br>
                             <a href="brinquedo7.jsp" class="btn-primary">Saiba mais</a><br>
                        </div>

                        <div class="col-md-4">
                            <img src="img/jogo2.png" width="200" height="150"><br><br>
                            Jogo Pie Face: O Duelo<br>
                            R$ 139,99<br>
                             <a href="brinquedo8.jsp" class="btn-primary">Saiba mais</a><br>
                        </div>

                        <div class="col-md-4">
                            <img src="img/jogo3.png" width="200" height="150"><br><br>
                            Jogo Super Banco Imobiliário<br>
                            R$ 169,90<br>
                             <a href="brinquedo9.jsp" class="btn-primary">Saiba mais</a><br>
                        </div>
                        </div>
                    </div>
                    
                    <!-- Div para mostrar a aba de brinquedos para praia -->
                    
                    <div id="praia" style="display:block">
                        <div class="row">
                        <div class="col-md-4">
                            <img src="img/praia1.png" width="200" height="150"><br><br>
                            Conjunto de Praia<br>
                            R$ 29,90<br>
                             <a href="brinquedo10.jsp" class="btn-primary">Saiba mais</a><br>
                        </div>

                        <div class="col-md-4">
                            <img src="img/praia2.png" width="200" height="150"><br><br>
                            Brinquedo Vou Pra Praia com 9 peças<br>
                            R$ 45,99<br>
                             <a href="brinquedo11.jsp" class="btn-primary">Saiba mais</a><br>
                        </div>

                        <div class="col-md-4">
                            <img src="img/praia3.png" width="200" height="150"><br><br>
                            Tenda Praia Homem Aranha<br>
                            R$ 45,99<br>
                             <a href="brinquedo12.jsp" class="btn-primary">Saiba mais</a><br>
                        </div>
                    </div>
                    </div> 
                    </div>
                    
                    </div>
                    
                    <br><br><div class="meio1">
            <button type="button" onclick="window.location.href='brinqrecentes.jsp'" class="btn-primary">Produtos recentes</button>
            </div>
         
        <footer class="footer">
            Atura ou Surta
        </footer>


     <script>
            function Sessão(obj){
                document.getElementById('bonecos').style.display="block";
                document.getElementById('carrinhos').style.display="block";
                document.getElementById('tabuleiros').style.display="block";
                document.getElementById('praia').style.display="block";
                
                switch(obj.id){                    
                    case '1':
                    document.getElementById('bonecos').style.display="block";
                    document.getElementById('carrinhos').style.display="none";
                    document.getElementById('tabuleiros').style.display="none";
                    document.getElementById('praia').style.display="none";
                    
                    break
                    
                    case '2':
                    document.getElementById('bonecos').style.display="none";
                    document.getElementById('carrinhos').style.display="block";
                    document.getElementById('tabuleiros').style.display="none";
                    document.getElementById('praia').style.display="none";
                    break
                    
                    case '3':
                    document.getElementById('bonecos').style.display="none";
                    document.getElementById('carrinhos').style.display="none";
                    document.getElementById('tabuleiros').style.display="block";
                    document.getElementById('praia').style.display="none";
                    break
                    
                    case '4':
                    document.getElementById('bonecos').style.display="none";
                    document.getElementById('carrinhos').style.display="none";
                    document.getElementById('tabuleiros').style.display="none";
                    document.getElementById('praia').style.display="block";
                    break
                    
                   case '90':
                    document.getElementById('bonecos').style.display="block";
                    document.getElementById('carrinhos').style.display="block";
                    document.getElementById('tabuleiros').style.display="block";
                    document.getElementById('praia').style.display="block";
                    break
                
                } 
            }
        </script>
    
</html>
