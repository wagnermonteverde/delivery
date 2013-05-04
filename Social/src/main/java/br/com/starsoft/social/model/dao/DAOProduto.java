/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.dao;

import br.com.starsoft.social.model.beans.Produtos;
import br.com.starsoft.social.model.beans.Usuario;
import br.com.starsoft.social.model.beans.Vendedor;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;

/**
 *
 * @author Henrique
 */
public class DAOProduto extends DAO<Produtos> {

    public DAOProduto(Class<Produtos> classe) {
        super(classe);
    }



    public List<Produtos> consultaPorVendedor(int id) {
        Usuario u = null;
        EntityManager em = new JPAUtil().getEntityManager();
        Query query = em.createQuery("select p from Produtos p where p.id_vendedor = '" + id + "'", Produtos.class);
        List<Produtos> produtos = null;
        try {

            produtos = (List<Produtos>) query.getResultList();

        } catch (Exception e) {

            em.close();
            return null;
        }
        em.close();
        return produtos;

    }
}
