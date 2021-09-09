<%-- 
    Document   : formAlterarUsuarioVIEW
    Created on : 09/09/2021, 12:02:18
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
        <h1>Digite as informações que deseja alterar!</h1>
        
        <form method="post" action="alterarUsuario.jsp">
            
            <label for="id">ID:</label>
            <input type="text" name="id" required readonly="" value="<%=request.getParameter("id")%>">
            
            <label for="nome">Nome:</label>
            <input type="text" name="nome" required value="<%=request.getParameter("nome")%>">
            
            <label for="cpf">CPF:</label>
            <input type="text" name="cpf" required value="<%=request.getParameter("cpf")%>">
            
            <label for="email">E-mail:</label>
            <input type="text" name="email" required value="<%=request.getParameter("email")%>">
            
            <label for="email">Senha:</label>
            <input type="text" name="senha" required value="<%=request.getParameter("senha")%>">
                                    
            <button type="submit">Alterar</button>
                        
        </form>
            
    </body>
</html>
