/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.testes;

import br.com.starsoft.social.model.beans.Usuario;
import br.com.starsoft.social.model.dao.DAO;
import br.com.starsoft.social.model.dao.DAOUsuario;

/**
 *
 * @author wagner
 */
public class testeInterfaceFoto {
    
    public static void main(String[] args) {
        
        
      DAO<Usuario> dao = new DAO<Usuario>(Usuario.class);
      
      Usuario user = dao.buscaPorId(1);
      
        System.out.println(user.getFotoString());        
        
    }
    
}
