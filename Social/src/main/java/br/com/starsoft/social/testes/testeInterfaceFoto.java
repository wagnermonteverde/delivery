/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.testes;

import br.com.starsoft.social.model.beans.Endereco;
import br.com.starsoft.social.model.beans.Location;
import br.com.starsoft.social.model.beans.Usuario;
import br.com.starsoft.social.model.dao.DAO;
import br.com.starsoft.social.model.dao.DAOUsuario;
import br.com.starsoft.social.model.logic.MapsUtils;
import org.json.JSONException;

/**
 *
 * @author wagner
 */
public class testeInterfaceFoto {

    public static void main(String[] args) throws JSONException {


        DAO<Usuario> dao = new DAO<Usuario>(Usuario.class);
        DAO<Location> daolo = new DAO<Location>(Location.class);
        DAO<Endereco> daoEnd = new DAO<Endereco>(Endereco.class);

        Usuario user = dao.buscaPorId(2);


        Location location = MapsUtils.getCoord("rua campos sales,291, barbosa ferraz,parana");
        daolo.adiciona(location);

        Endereco endereco = new Endereco();
        endereco.setCep("86960000");
        endereco.setCidade("barbosa ferraz");
        endereco.setLocation(location);
        endereco.setNumero(1);
        endereco.setUf("parana");
        daoEnd.adiciona(endereco);

        

        user.setEndereco(endereco);

        dao.atualiza(user);


    }
}
