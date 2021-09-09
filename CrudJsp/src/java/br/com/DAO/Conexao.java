/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.DAO;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;

/**
 *
 * @author FirstPlacePC
 */
public class Conexao {
    
    Connection con = null;
    
    public Connection getConexao(){
    
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost/crud_jsp?user=root&password=";
            
            con = DriverManager.getConnection(url);
            
        } catch (Exception e) {
            System.out.println("Deu erro na classe Conexao!!!" + e);
        }
    
        return con;
    }
    
    
}
