/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.dao;

import br.com.starsoft.social.model.beans.Location;
import br.com.starsoft.social.model.beans.Produtos;
import br.com.starsoft.social.model.beans.Usuario;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;

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

        Query query = em.createNativeQuery("SELECT * FROM Produtos P WHERE location_id in ( "
                + " SELECT"
                + "`id` "
                + " FROM `Location` "
                + " WHERE "
                + "ACOS( SIN( RADIANS( `latitude` ) ) * SIN( RADIANS(" + location.getLatitude() + ") ) + COS( RADIANS( `latitude` ) )"
                + "* COS( RADIANS(" + location.getLatitude() + ")) * COS( RADIANS( `longitude` ) - RADIANS(" + location.getLongitude() + ")) ) * 6380 < 10"
                + ") and nome like \"%" + busca + "%\"",
                Produtos.class);

        List<Produtos> produtos = null;

        try {


            produtos = query.setMaxResults(maxResults).setFirstResult(firstResult).getResultList();


        } catch (Exception e) {

            em.close();
            return null;
        }
        em.close();
        return produtos;

    }
}
