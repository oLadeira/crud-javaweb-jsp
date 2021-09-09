
package br.com.DAO;

import br.com.Model.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;


public class UsuarioDAO {
    
    Connection con;
    PreparedStatement prst;
    
    
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
    
}
