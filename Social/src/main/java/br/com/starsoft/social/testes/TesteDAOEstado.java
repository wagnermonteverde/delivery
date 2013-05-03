/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.testes;

import br.com.starsoft.social.model.beans.Estado;
import br.com.starsoft.social.model.dao.DAO;
import br.com.starsoft.social.model.dao.DAOEstado;

/**
 *
 * @author wagner
 */
public class TesteDAOEstado {
    
    public static void main(String[] args) {
        
        
       DAOEstado dao = new DAOEstado(Estado.class);
        
        Estado estado = dao.consultaPorUf("Paraná");
        
        System.out.println(estado.toString());
        
        
    }
    
}
