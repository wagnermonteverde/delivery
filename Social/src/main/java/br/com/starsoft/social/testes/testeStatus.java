/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.testes;

import br.com.starsoft.social.model.beans.PessoaFisica;
import br.com.starsoft.social.model.beans.Status;
import br.com.starsoft.social.model.beans.Vendedor;
import javax.net.ssl.SSLEngineResult;

/**
 *
 * @author wagner
 */
public class testeStatus {
    
    public static void main(String[] args) {
        
        Status s = Status.FECHADO;
        
        
        if (s.equals(Status.ABERTO)) {
            System.out.println(s);
            
        }
        
        Vendedor vendedor = new PessoaFisica("04271689963","wagner aparecido monteverde");
        vendedor.setTipo("pf");
        
        System.out.println(vendedor.getTipo());
        
        
        
    }
}
