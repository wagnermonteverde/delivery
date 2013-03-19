package br.com.starsoft.social.testes;

import br.com.starsoft.social.model.beans.Nome;
import br.com.starsoft.social.model.logic.ControlerCadastro;
import br.com.starsoft.social.model.beans.Usuario;
import br.com.starsoft.social.model.dao.DAO;
import br.com.starsoft.social.model.dao.DAOUsuario;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.FacebookLink;
import org.springframework.social.facebook.api.FacebookProfile;
import org.springframework.social.facebook.api.impl.FacebookTemplate;

/**
 *
 * @author wagner
 */
public class testePersistencia {
    
    public static void main(String[] args) {
        
        Nome nome = new Nome("wagner");
        
        DAO<Nome> dao = new DAO<Nome>(Nome.class);
        
        dao.adiciona(nome);
        
        
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
        
        
        
//        
//        Facebook facebook = new FacebookTemplate("");
//        
//        FacebookLink link = new FacebookLink("http://www.fabiodurand.com.br/","Teste Postagem Link","Teste","Teste aplicação Java Web Postagen de Links");
//        
//        FacebookProfile profile =  facebook.userOperations().getUserProfile();
//        
//        facebook.feedOperations().postLink("Fabio Durand", link);
        
        
//        facebook.feedOperations().updateStatus("Teste 2 token armazenado Postagem Com Aplicação Java Web ! Uhuuuuuuuuuuuuuuuuuuuuul \n Spring Social \n"
//        + "Metodo de Autenticação OAuth2");

        
    }
    
}
