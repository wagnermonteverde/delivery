/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.testes;

import br.com.starsoft.social.model.logic.Upload;
import br.com.starsoft.social.model.utils.TrataCaracteres;

/**
 *
 * @author wagner
 */
public class TesteNomePasta {
    
    public static void main(String[] args) {
        String nome = "Conceição péle de Sôuxa";
        
        System.out.println(TrataCaracteres.retiraAcentosEspacos(nome).trim());
        
        Upload upload = new Upload("/home/wagner/Documentos/Social/Social/target/Social-1/img/empresas");
        
    }
    
}
