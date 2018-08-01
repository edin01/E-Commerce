<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/main.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Adicionar produto</title>
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
                <h1>Adicionar produtos</h1><br>
                <div class="col-md-4"></div>
                <form name="InserirProdu" action="Produtos" method="Post">
                    <div class="col-md-4">
                        
                    <input required name=dd name="dd" type="text" class="form-control form-control-custom" placeholder="Nome do produto" maxlength="50"><br> 
                    
                    <input required name=ee name="ee" type="text" class="form-control form-control-custom" placeholder="Preço" maxlength="50"><br>
                    
                    <input required name=ff name="ff" type="text" class="form-control form-control-custom" placeholder="Marca" maxlength="50"><br>
                    
                    <input required name=hh name="hh" type="text" class="form-control form-control-custom" placeholder="Id da Categoria" maxlength="2"><br>
                    
                    <input name="gg" type="text" class="form-control form-control-custom" placeholder="Descrição"><br>
                    
                    
                    <button type="submit" class="btn btn-sucess">Criar</button>
                    <br><button type="button" class="btn btn-primary" onclick="history.back()">Voltar</button></div>
                </form>
                <div class="col-md-4"></div>


            </div>
        </div>
        <footer class="footer">
            Atura ou Surta
        </footer>
    </body>
</html>
