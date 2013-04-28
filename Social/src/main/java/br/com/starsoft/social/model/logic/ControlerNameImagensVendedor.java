/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.logic;

import br.com.starsoft.social.model.beans.Vendedor;
import java.util.Random;

/**
 *
 * @author wagner
 */
public class ControlerNameImagensVendedor {

    public String resolveNomeImagens(String formOrigem , Vendedor vendedor) {

        if (formOrigem.equals("perfil")) {

            return "logo";


        }
        
        if (formOrigem.equals("prod")) {

         String nome =   geraNome(vendedor);
            
            return "p1";


        }

        return "erro";
    }

    private String geraNome(Vendedor vendedor) {
        
        return null;
        
    }
}
