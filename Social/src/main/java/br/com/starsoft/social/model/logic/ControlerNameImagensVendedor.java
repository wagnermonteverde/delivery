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

    public String resolveNomeImagens(String formOrigem, Vendedor vendedor) {
        

        if (formOrigem.equals("perfil")) {

            return "logo";


        }

        if (formOrigem.equals("prod")) {

            String nome = geraNome(vendedor);

            return nome;


        }

        return "erro";
    }

    private String geraNome(Vendedor vendedor) {
        //verificar se não é igual a outra no banco
        
        String nomeArquivo = null;
        nomeArquivo = String.valueOf((Math.random()));
        nomeArquivo = nomeArquivo.replace(".", "");
        System.out.println(nomeArquivo);

        

        return nomeArquivo;

    }
}
