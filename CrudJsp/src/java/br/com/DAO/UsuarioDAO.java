
package br.com.DAO;

import br.com.Model.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class UsuarioDAO {
    
    Connection con;
    PreparedStatement prst;
    ArrayList<Usuario> lista = new ArrayList<>();
    ResultSet rs;
    
    
    public void inserirUsuario(Usuario usuario){
        con = new Conexao().getConexao();
        String sql = "INSERT INTO usuario (nome, cpf, email, senha) VALUES (?,?,?,?)";
        
        try {
            prst = con.prepareStatement(sql);
            
            prst.setString(1, usuario.getNome());
            prst.setString(2, usuario.getCpf());
            prst.setString(3, usuario.getEmail());
            prst.setString(4, usuario.getSenha());
            
            prst.execute();
            prst.close();
            
        } catch (Exception e) {
            System.out.println("Deu erro na classe UsuarioDAO método inserirUsuario!!!" + e);
        }
    
    }
    
    public ArrayList<Usuario> listarUsuario(){
        con = new Conexao().getConexao();
        String sql = "SELECT * FROM usuario";
    
        try {
            
            prst = con.prepareStatement(sql);                  
            
            rs = prst.executeQuery(sql);
            
            while(rs.next()){
            Usuario usuario = new Usuario();
            usuario.setId(rs.getInt("id"));
            usuario.setNome(rs.getString("nome"));
            usuario.setCpf(rs.getString("cpf"));
            usuario.setEmail(rs.getString("email"));
            usuario.setSenha(rs.getString("senha"));
            
            lista.add(usuario);
            
            }
            
            
        } catch (SQLException e) {
            System.out.println("Deu erro na classe UsuarioDAO no metodo listarUsuario !!! " + e);
        }
        return lista;
    }
    
    public void excluirUsuario(Usuario usuario){
        con = new Conexao().getConexao();
        String sql = "DELETE FROM usuario WHERE id=?";
        
        try {
            prst = con.prepareStatement(sql);
            
            prst.setInt(1, usuario.getId());
            
            prst.execute();
            prst.close();
            
        } catch (Exception e) {
            System.out.println("Deu erro na classe UsuarioDAO metodo excluirUsuario!! " + e);
        }
    
    
    }
    
}
