/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.logic;

import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.FacebookLink;
import org.springframework.social.facebook.api.FacebookProfile;
import org.springframework.social.facebook.api.impl.FacebookTemplate;

/**
 *
 * @author wagner
 *
 * Classe que encapsula todas asoperaçõs com o facebook
 *
 */
public class ControlerFacebookOperations {

    public void postaStatusFacebook(String token, String status) {

        Facebook facebook = new FacebookTemplate(token);
         facebook.feedOperations().updateStatus(status);

    }
    public void postaLinkFacebook(String token, String status) {

        Facebook facebook = new FacebookTemplate(token);
      
        FacebookLink link = new FacebookLink("http://www.fabiodurand.com.br/","Teste Postagem Link","Teste","Teste aplicação Java Web Postagen de Links");

        FacebookProfile profile = facebook.userOperations().getUserProfile();

        facebook.feedOperations().postLink("Fabio Durand", link);


    }
}
