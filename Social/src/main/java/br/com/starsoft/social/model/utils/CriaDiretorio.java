/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.utils;

import java.io.File;

/**
 *
 * @author wagner
 */
public class CriaDiretorio {
    
    
    public void createDirectory(String path) {
        File file = new File(path);
        if (!file.exists()) {
            file.mkdir();
        }
    }
    
}
