/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.dao;

import br.com.starsoft.social.model.beans.Usuario;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;

/**
 *
 * @author wagner
 */
public class DAOUsuario extends DAO<Usuario> {

    public DAOUsuario(Class<Usuario> classe) {
        super(classe);
    }

    public Usuario consultaEmail(String mail) {
        Usuario u = null;
        EntityManager em = new JPAUtil().getEntityManager();
        Query query = em.createQuery("select u from Usuario u where u.mail = '" + mail + "'", Usuario.class);
        List<Usuario> users = null;
        try {

            users = (List<Usuario>) query.getResultList();
            u = users.get(0);

        } catch (Exception e) {

            em.close();
            return null;
        }
        em.close();
        return u;

    }
}
