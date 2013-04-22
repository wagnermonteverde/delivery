/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.testes;

import br.com.starsoft.social.model.beans.Vendedor;
import br.com.starsoft.social.model.dao.DAOVendedor;
import br.com.starsoft.social.model.utils.CriptografaSenha;

/**
 *
 * @author wagner
 */
public class testeSenha {
    
    public static void main(String[] args) {
         DAOVendedor daoVendedor = new DAOVendedor(Vendedor.class);
        String mail ="wagnermonteverde@hotmail.com";
         String md5 = CriptografaSenha.criptografa("salsa10");
        
        Vendedor vendedor = daoVendedor.consultaEmail(mail);
        
        System.out.println(vendedor.getMail());
        System.out.println(vendedor.getSenha());
        
         if (vendedor != null) {
            
            if (md5.equals(vendedor.getSenha()) && mail.equals(vendedor.getMail())) {
                
                System.out.println("true");
                
            }
            
        }        
                System.out.println("false");
        
    }
    
}
