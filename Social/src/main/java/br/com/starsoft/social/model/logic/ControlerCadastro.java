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
import br.com.starsoft.social.model.utils.DataFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
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

    public Usuario cadastrobasico(FacebookProfile profile, Facebook facebook, String acessToken) {

        DAOUsuario daoUsuario = new DAOUsuario(Usuario.class);

        DAO dao = new DAO(Object.class);
        


        byte[] foto = facebook.userOperations().getUserProfileImage();


        Usuario user = new Usuario();
        user.setLastName(profile.getLastName());
        user.setName(profile.getFirstName());
        user.setMail(profile.getEmail());
        user.setFotoPerfil(foto);
        user.setTokenAcesso(acessToken);
        user.setDataNascimeto(DataFormat.converte(profile.getBirthday()));
        

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

    public void cadastraEndereco(HttpServletRequest request) throws JSONException {
        DAO<Location> daoLocation = new DAO<Location>(Location.class);
        DAO<Usuario> daoUsuario = new DAO<Usuario>(Usuario.class);
        DAO<Endereco> daoEndereco = new DAO<Endereco>(Endereco.class);


        Usuario user = (Usuario) request.getSession().getAttribute("usuario");
        

        String rua = request.getParameter("rua");
        String cidade = request.getParameter("cidade");
        String numero = request.getParameter("n");
        String estado = request.getParameter("estado");
        String cep = request.getParameter("cep");
        
        rua = rua.toUpperCase();
        cidade = cidade.toUpperCase();
        estado = estado.toUpperCase();

        Location location = MapsUtils.getCoord(rua + "," + numero + "," + cidade + "," + estado);
     
        daoLocation.adiciona(location);
        System.out.println(location.toString());

        Endereco endereco = new Endereco();

        endereco.setCidade(cidade);
        endereco.setCep(cep);
        endereco.setLocation(location);
        endereco.setRua(rua);
        endereco.setUf(estado);
        endereco.setNumero(Integer.parseInt(numero));
//        System.out.println(endereco.toString());

        daoEndereco.adiciona(endereco);
        
        System.out.println(user.toString());
        
        user.setEndereco(endereco);

        daoUsuario.atualiza(user);


    }
}
