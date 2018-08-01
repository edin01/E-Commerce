<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/main.css">
<title>Alterar categoria</title>
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
    
<h1>Alterar Categoria</h1>
<table class="table table-striped">
<thead>
<tr>
<th>Nome da Categoria</th>
<th>Id da Categoria</th>
</tr>
</thead>
<tbody>
<tr>
<form method="post" action="Alteracategoria">
<td><input required name=nomecategoria type="text" class="form-control form-control-custom" name="nomecategoria" value="<%=request.getParameter("nomecategoria")%>"</td>
<td><input readonly="readonly" type="text" class="form-control form-control-custom" name="idcategoria" value="<%=request.getParameter("idcategoria")%>"</td>
<td><button type="submit" class="btn btn-sucess" onclick="aviso()">Alterar</button></td>
<td><button type="button" class="btn btn-primary" onclick="history.back()">Voltar</button></td>
<!-- Não é possível alterar o Id do produto, já que é acrescentado automaticamente pelo BD.-->
</form>
</tr>
</tbody>
</table>

        </div>

<footer class="footer">
Atura ou Surta
</footer>
</body>
</html>
