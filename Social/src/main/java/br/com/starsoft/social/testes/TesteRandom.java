
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.testes;

/**
 *
 * @author wagner
 */
public class TesteRandom {
    
    public static void main(String[] args) {
        String x = null;
        
        for (int i = 0; i < 100; i++) {
            x = String.valueOf((Math.random()));
            x=x.replace(".","");
            System.out.println(x);
        }
    }
}
