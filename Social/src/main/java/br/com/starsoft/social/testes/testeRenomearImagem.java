/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.testes;

/**
 *
 * @author wagner
 */
public class testeRenomearImagem {
    
    public static void main(String[] args) {
        
        
        String nome = "perfil";    
        String img = "nweImg.jpeg";
        
        int i = img.lastIndexOf(".");
        
        img = img.substring(i, img.length());
        
        System.out.println(nome+img);
        
    }
    
}
