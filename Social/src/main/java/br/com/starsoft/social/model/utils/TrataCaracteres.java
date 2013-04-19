/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.utils;

/**
 *
 * @author wagner
 */
public class RetiraCaracteres {

    public static String retiraCaracteresNaoNumericos(String cpfCnpj) {
        return cpfCnpj.replaceAll("[^0-9]", "");
    }
}
