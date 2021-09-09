<%-- 
    Document   : excluirUsuario
    Created on : 09/09/2021, 11:47:03
    Author     : FirstPlacePC
--%>

<%@page import="br.com.Model.Usuario"%>
<%@page import="br.com.DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    UsuarioDAO usuarioDAO = new UsuarioDAO();
    Usuario usuario = new Usuario();
    
    try {
        usuario.setId(Integer.parseInt(request.getParameter("id")));
        usuario.setNome(request.getParameter("nome"));
        usuario.setCpf(request.getParameter("cpf"));
        usuario.setEmail(request.getParameter("email"));
        usuario.setSenha(request.getParameter("senha"));
        
        usuarioDAO.excluirUsuario(usuario);
        
        response.sendRedirect("index.html");
         
        } catch (Exception e) {
            out.println("Deu erro no arquivo excluirUsuario!!!" + e);
        }


%>
