/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.dao;

import br.com.starsoft.social.model.beans.Estado;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;

/**
 *
 * @author wagner
 */
public class DAOEstado extends DAO<Estado> {

    public DAOEstado(Class<Estado> classe) {
        super(classe);
    }

    public Estado consultaPorUf(String nome) {
        Estado es = null;
        EntityManager em = new JPAUtil().getEntityManager();
        Query query = em.createQuery("select e from Estado e where e.nome = '" + nome + "'", Estado.class);
        List<Estado> est = null;
        try {

            est = (List<Estado>) query.getResultList();
            es = est.get(0);

        } catch (Exception e) {

            em.close();
            return null;
        }
        em.close();
        return es;

    }
}
