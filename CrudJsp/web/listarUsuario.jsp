<%-- 
    Document   : listarUsuario
    Created on : 09/09/2021, 10:24:26
    Author     : FirstPlacePC
--%>

<%@page import="br.com.Model.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Usuários!</h1>
        
        <%
            UsuarioDAO usuarioDAO = new UsuarioDAO();
            ArrayList<Usuario> lista = usuarioDAO.listarUsuario();
        try {
            out.println("<table class='table table-bordered table-sm table-striped' border='2'>");
                out.println("<thead class='table-primary'");
                    out.println("<tr>"); //linha, table row
                                out.println("<th>ID</th>");
                                out.println("<th>Nome</th>");
                                out.println("<th>Cpf</th>");
                                out.println("<th>Email</th>");
                                out.println("<th>Senha</th>");
                                out.println("<th>Excluir</th>");
                                out.println("<th>Alterar</th>");
                    out.println("</tr>");
                out.println("</thead>");
            for(int num=0; num < lista.size(); num++){
                
                    out.println("<tr>");
                        out.println("<td> " + lista.get(num).getId() + "<br>");  
                        out.println("<td> " + lista.get(num).getNome()+ "<br>");  
                        out.println("<td> " + lista.get(num).getCpf()+ "<br>");  
                        out.println("<td> " + lista.get(num).getEmail()+ "<br>");  
                        out.println("<td> " + lista.get(num).getSenha()+ "<br>");
                        
                        out.println("<td> <a href='formExcluirUsuarioVIEW.jsp?id=" + lista.get(num).getId() + "&nome=" 
                        + lista.get(num).getNome() + "&cpf=" + lista.get(num).getCpf() + "&email=" 
                        + lista.get(num).getEmail() + "&senha=" + lista.get(num).getSenha() + "'>Excluir</a>");
                        
                        out.println("<td> <a href=''>Alterar</a>");
                        
                   out.println("</tr>"); 
                
                
                
                /*
                    <table>
                        <tr>
                
                
                    </table
                
                
                */
                
            }
                                                      
                
            } catch (Exception e) {
                System.out.println("Deu erro no arquivo listarUsuario!!! " + e);
            }
            out.println("</table>");
            
        %>
        
    </body>
</html>
