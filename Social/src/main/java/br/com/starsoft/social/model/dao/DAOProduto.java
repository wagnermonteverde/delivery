/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.dao;

import br.com.starsoft.social.model.beans.Location;
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
        Query query = em.createQuery("select p from Produtos p where p.id_vendedor = " + id + "", Produtos.class);
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

    public List<Produtos> buscaPaginada(int firstResult, int maxResults, Location location, String busca) {



        Usuario u = null;
        EntityManager em = new JPAUtil().getEntityManager();
//        Query query = em.createQuery("select u from Produtos u", Produtos.class);
        Query query = em.createNativeQuery("SELECT * FROM Produtos P WHERE location_id in ( "
                + " SELECT"
                + "`id` "
                + " FROM `Location` "
                + " WHERE "
                + "ACOS( SIN( RADIANS( `latitude` ) ) * SIN( RADIANS(-52.40362) ) + COS( RADIANS( `latitude` ) )"
                + "* COS( RADIANS(-52.40362)) * COS( RADIANS( `longitude` ) - RADIANS(-24.0504)) ) * 6380 < 10"
                + ")",
                Produtos.class);
        
        List<Produtos> produtos = null;
//
//        for (Produtos produtos1 : produtos) {
//            System.out.println(produtos1.toString()+"------------------------");
//        }
        try {


            produtos = query.setFirstResult(firstResult).setMaxResults(maxResults).getResultList();


        } catch (Exception e) {

            em.close();
            return null;
        }
        em.close();
        return produtos;

    }
}
