<%-- 
    Document   : inserirUsuario
    Created on : 09/09/2021, 09:56:55
    Author     : FirstPlacePC
--%>

<%@page import="br.com.Model.Usuario"%>
<%@page import="br.com.DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
    try {
            UsuarioDAO usuarioDAO = new UsuarioDAO();
            Usuario usuario = new Usuario();
            
            usuario.setNome(request.getParameter("nome"));
            usuario.setCpf(request.getParameter("cpf"));
            usuario.setEmail(request.getParameter("email"));
            usuario.setSenha(request.getParameter("senha"));
            
            usuarioDAO.inserirUsuario(usuario);
            
            response.sendRedirect("index.html");
            
        } catch (Exception e) {
            out.println("Deu erro no arquivo inserirUsuario!!!" + e);
        }


%>
