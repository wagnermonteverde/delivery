/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.logic;

import br.com.starsoft.social.model.beans.Usuario;
import br.com.starsoft.social.model.dao.DAOUsuario;
import br.com.starsoft.social.model.utils.ByteToBase64;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.FacebookProfile;

/**
 *
 * @author wagner
 */
public class ControlerCadastro {

    public ControlerCadastro() {
    }

    public Usuario cadastrobasico(FacebookProfile profile, Facebook facebook,String acessToken) {
        DAOUsuario daoUsuario = new DAOUsuario(Usuario.class);
        byte[] foto = facebook.userOperations().getUserProfileImage();
        

        Usuario user = new Usuario();
        user.setLastName(profile.getLastName());
        user.setName(profile.getFirstName());
        user.setMail(profile.getEmail());
        user.setFotoPerfil(foto);
        user.setTokenAcesso(acessToken);
        daoUsuario.adiciona(user);

        return daoUsuario.consultaEmail(user.getMail());

    }

    public Boolean verificaCadastrado(String mail) {

        Usuario user = new DAOUsuario(Usuario.class).consultaEmail(mail);

        return user == null ? false : true;

    }

    public Usuario RetornaUsuarioCadastrado(String mail) {

        Usuario user = new DAOUsuario(Usuario.class).consultaEmail(mail);

        return user;

    }
}
