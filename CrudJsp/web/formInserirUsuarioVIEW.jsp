<%-- 
    Document   : formInserirUsuarioVIEW
    Created on : 09/09/2021, 09:51:15
    Author     : FirstPlacePC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Inserir Usuário</h1>
        
        <form method="post" action="inserirUsuario.jsp">
            
            <label for="nome">Nome:</label>
            <input type="text" name="nome" required>
            
            <label for="cpf">CPF:</label>
            <input type="text" name="cpf" required>
            
            <label for="email">E-mail:</label>
            <input type="text" name="email" required>
            
            <label for="senha">Senha:</label>
            <input type="password" name="senha" required>
            
            <button type="submit">Cadastrar</button>
            
        </form>
        
    </body>
</html>
