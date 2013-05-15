/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.dao;

import br.com.starsoft.social.model.beans.Cidade;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;

/**
 *
 * @author wagner
 */
public class DAOCidade extends DAO<Cidade> {
    
    
    public DAOCidade(Class<Cidade> classe) {
        super(classe);
    }

    public List<Cidade> consultaPorUf(String uf) {
        EntityManager em = new JPAUtil().getEntityManager();
        Query query = em.createQuery("select c from Cidade c where c.estado = '" + uf + "'", Cidade.class);
        List<Cidade> city = null;
        try {

            city = (List<Cidade>) query.getResultList();
         

        } catch (Exception e) {

            em.close();
            return null;
        }
        em.close();
        return city;

    }
    
}
