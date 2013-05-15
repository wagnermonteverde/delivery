/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.testes;

import br.com.starsoft.social.model.utils.CriaDiretorio;

/**
 *
 * @author wagner
 */
public class testeCriaDiretotio {
    
    public static void main(String[] args) {
        
        
        CriaDiretorio criaDiretorio = new CriaDiretorio();
        
        criaDiretorio.createDirectory("/home/wagner/Documentos/Social/Social/target/Social-1/img/empresas/wagnermonteverdeteste");
        
    }
    
}
