/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.logic;

/**
 *
 * @author wagner
 */
public class ControlerNameImagensVendedor {

    public String resolveNomeImagens(String formOrigem) {

        if (formOrigem.equals("perfil")) {

            return "logo";


        }
        
        if (formOrigem.equals("prod")) {

            return "p1";


        }

        return "erro";
    }
}
