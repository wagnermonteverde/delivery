/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.utils;

import java.text.Normalizer;

/**
 *
 * @author wagner
 */
public class TrataCaracteres {

    public static String retiraCaracteresNaoNumericos(String cpfCnpj) {
        return cpfCnpj.replaceAll("[^0-9]", "");
    }

    public static String retiraAcentos(String string) {
        string = Normalizer.normalize(string, Normalizer.Form.NFD);
        return string.replaceAll("[^\\p{ASCII}]", "");
    }
}
