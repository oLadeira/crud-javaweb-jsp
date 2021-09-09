<%-- 
    Document   : alterarUsuario
    Created on : 09/09/2021, 12:07:28
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
        
        usuarioDAO.alterarUsuario(usuario);
        
        response.sendRedirect("index.html");
        
        } catch (Exception e) {
            out.println("Deu erro no arquivo alterarUsuario!!!" + e);
        }


%>