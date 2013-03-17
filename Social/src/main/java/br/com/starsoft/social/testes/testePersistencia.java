/*
 * To change this template, choose Tools | Templates
 * and open the template ins the editorBARTOSKI.
 */
package br.com.starsoft.social.testes;

import br.com.starsoft.social.model.logic.ControlerCadastro;
import br.com.starsoft.social.model.beans.Usuario;
import br.com.starsoft.social.model.dao.DAOUsuario;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.FacebookProfile;
import org.springframework.social.facebook.api.impl.FacebookTemplate;

/**
 *
 * @author wagner
 */
public class testePersistencia {
    
    public static void main(String[] args) {
//        
//        Nome nome = new Nome("wagner");
//        
//        DAO<Nome> dao = new DAO<Nome>(Nome.class);
//        
//        dao.adiciona(nome);
        
        
//        Usuario user = new Usuario();
//       
//        ControlerCadastro cad = new ControlerCadastro();
//        DAOUsuario daou = new DAOUsuario(Usuario.class);
//        
//        
//        System.out.println(cad.verificaCadastrado("wagnermonteverde@hotmail.com"));
//        
//        user.setName("wagner");
//        user.setMail("wagnermonteverde@hotmail.com");
//        
//        daou.adiciona(user);
//        
//        System.out.println(cad.verificaCadastrado("wagnermonteverde@hotmail.com"));
//        System.out.println(cad.RetornaUsuarioCadastrado("wagnermonteverde@hotmail.com").toString());
        
        
        
        
        Facebook facebook = new FacebookTemplate("");
        
        
        FacebookProfile profile =  facebook.userOperations().getUserProfile();
        
        
        facebook.feedOperations().updateStatus("Teste Postagem Com Aplicação Java Web ! Uhuuuuuuuuuuuuuuuuuuuuul \n Spring Social \n"
        + "Metodo de Autenticação OAuth2");

        
    }
    
}
