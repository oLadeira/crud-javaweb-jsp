<%-- 
    Document   : formExcluirUsuarioVIEW
    Created on : 09/09/2021, 11:04:15
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
        <h1>Tem certeza que deseja excluir este usuário?</h1>
        
        <form method="post" action="excluirUsuario.jsp">
            
            <label for="id">ID:</label>
            <input type="text" name="id" required readonly="" value="<%=request.getParameter("id")%>">
            
            <label for="nome">Nome:</label>
            <input type="text" name="nome" required readonly="" value="<%=request.getParameter("nome")%>">
            
            <label for="cpf">CPF:</label>
            <input type="text" name="cpf" required readonly="" value="<%=request.getParameter("cpf")%>">
            
            <label for="email">E-mail:</label>
            <input type="text" name="email" required readonly="" value="<%=request.getParameter("email")%>">
            
            <label for="email">Senha:</label>
            <input type="text" name="senha" required readonly="" value="<%=request.getParameter("senha")%>">
                                    
            <button type="submit">Excluir</button>
                        
        </form>
                    
    </body>
</html>
