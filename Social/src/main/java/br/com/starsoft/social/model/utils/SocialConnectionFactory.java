package br.com.starsoft.social.model.utils;

import org.springframework.social.facebook.connect.FacebookConnectionFactory;

/**
 *
 * @author wagner
 *
 *
 */
public class SocialConnectionFactory {

    
    
    /*
     * 
     * <code>FacebookConnectionFactory<code> Classe de conexão Spring Social
     * 
     * 
     */
    private static FacebookConnectionFactory facebookConnectionFactory;
    
    

    /*
     * 
     * 
     * Metodo retorna uma conexão configurada com o app id e cliente secret
     * configurado na app graph do Facebook 
     * @return FacebookConnectionFactory
     * 
     * 
     */
    
    
    public static FacebookConnectionFactory facebookConnFactory() {

        return facebookConnectionFactory = new FacebookConnectionFactory("444866598902145", "6fc1dabf79a6cfee8caa699acfc79f94");

    }
}
