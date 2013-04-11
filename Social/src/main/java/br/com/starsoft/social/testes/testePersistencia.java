package br.com.starsoft.social.testes;

import br.com.starsoft.social.model.beans.Categoria;
import br.com.starsoft.social.model.beans.Nome;
import br.com.starsoft.social.model.beans.Produtos;
import br.com.starsoft.social.model.logic.ControlerCadastroUser;
import br.com.starsoft.social.model.beans.Usuario;
import br.com.starsoft.social.model.dao.DAO;
import br.com.starsoft.social.model.dao.DAOUsuario;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
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
  DAO<Produtos> dao = new DAO<Produtos>(Produtos.class);
        List<Produtos> listaTodos = dao.listaTodos();
        for (Produtos produtos : listaTodos) {
            System.out.println(produtos.toString());
            
        }

        
//         DAO dao = new DAO(Object.class);
//        
//            Produtos p = new Produtos();
//            p.setDescricao("desc");
//            p.setNome("teetee");
//            p.setPreco(2.0);
//            p.setCategoria(Categoria.Bebida);
//            
//            dao.adiciona(p);
        
        
//        Nome nome = new Nome("wagner");
//        
//        DAO<Nome> dao = new DAO<Nome>(Nome.class);
//        
//        dao.adiciona(nome);
        
        
//        Usuario user = new Usuario();
//       
//        ControlerCadastroUser cad = new ControlerCadastroUser();
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
