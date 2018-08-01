<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/main.css">
        <title>Adicionar categoria</title>
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
            <div class="meio">
                <h1>Adicionar Categoria</h1>
                <div class="col-md-4"></div>
                <form name="InserirCate" action="Categoria" method="Post">
                    <div class="col-md-4"><input required name=cc name="cc" type="text" class="form-control form-control-custom" placeholder="Nome da categoria" maxlength="30">    <button type="submit" class="btn btn-sucess">Criar</button>
                    <br><button type="button" class="btn btn-primary" onclick="history.back()">Voltar</button></div>
                </form>
                <div class="col-md-4"></div>


            </div>
        </div>
        <footer class="footer">
            Atura ou Surta
        </footer>
        <script>           
        </script>
    </body>
</html>
