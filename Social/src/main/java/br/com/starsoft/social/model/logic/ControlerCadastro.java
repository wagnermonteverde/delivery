/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.logic;

import br.com.starsoft.social.model.beans.Endereco;
import br.com.starsoft.social.model.beans.Location;
import br.com.starsoft.social.model.beans.Usuario;
import br.com.starsoft.social.model.dao.DAO;
import br.com.starsoft.social.model.dao.DAOUsuario;
import br.com.starsoft.social.model.utils.ByteToBase64;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONException;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.FacebookProfile;

/**
 *
 * @author wagner
 */
public class ControlerCadastro {

    public ControlerCadastro() {
    }

    public Usuario cadastrobasico(FacebookProfile profile, Facebook facebook, String acessToken, Endereco endereco) {

        DAOUsuario daoUsuario = new DAOUsuario(Usuario.class);
        DAO dao = new DAO(Object.class);
        byte[] foto = facebook.userOperations().getUserProfileImage();
        
        Location location = new Location();
        
        try {
//            Criando uma string com o endereço para pesquisa da localização junto ao Google Maps
            String endereço = endereco.getRua() + ", " + endereco.getNumero() + ", " + endereco.getCidade() + " - " + endereco.getUf() + ",  Brasil";
//           Setando o resultado na busca no location
            location = MapsUtils.getCoord(endereço);
        } catch (JSONException ex) {
            Logger.getLogger(ControlerCadastro.class.getName()).log(Level.SEVERE, null, ex);
        }

        dao.adiciona(location);


        endereco.setLocation(location);

        dao.adiciona(endereco);



        Usuario user = new Usuario();
        user.setLastName(profile.getLastName());
        user.setName(profile.getFirstName());
        user.setMail(profile.getEmail());
        user.setFotoPerfil(foto);
        user.setTokenAcesso(acessToken);
        user.setEndereco(endereco);


        dao.adiciona(user);

        return daoUsuario.consultaEmail(user.getMail());
    }

    public Boolean verificaCadastrado(String mail) {

        Usuario user = new DAOUsuario(Usuario.class).consultaEmail(mail);

        return user == null ? false : true;

    }

    public Usuario RetornaUsuarioCadastrado(FacebookProfile profile, Facebook facebook, String acessToken) {

        Usuario user = new DAOUsuario(Usuario.class).consultaEmail(profile.getEmail());

        /*
         * criausuario novo pa ver se a atualizações no perfil
         * 
         */
        Usuario userAtualizado = new Usuario();
        userAtualizado.setName(profile.getFirstName());
        userAtualizado.setLastName(profile.getLastName());
        byte[] foto = facebook.userOperations().getUserProfileImage();
        userAtualizado.setFotoPerfil(foto);
        userAtualizado.setTokenAcesso(acessToken);


        /*
         *
         * faz verificcao de atualizações no perfil
         * se houver atualiza e retorna o usuario
         * 
         */

        if (!user.equals(userAtualizado)) {

            return atualizaUsuario(user, userAtualizado);

        }

        return user;

    }

    private Usuario atualizaUsuario(Usuario user, Usuario userAtualizado) {

        user.setName(userAtualizado.getName());
        user.setLastName(userAtualizado.getLastName());
        user.setFotoPerfil(userAtualizado.getFotoPerfil());
        user.setTokenAcesso(userAtualizado.getTokenAcesso());

        new DAOUsuario(Usuario.class).atualiza(user);

        return user;
    }
}
