/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.dao;

import br.com.starsoft.social.model.beans.Produtos;
import br.com.starsoft.social.model.beans.Vendedor;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;

/**
 *
 * @author Henrique
 */
public class DAOProduto extends DAO<Produtos>{
    

    public DAOProduto(Class<Produtos> classe) {
        super(classe);
    }
    
    public List<Produtos> consultaEmail(String pesquisa) {
        Vendedor v = null;
        EntityManager em = new JPAUtil().getEntityManager();
        
//        SELECT
//`id`,
//ACOS( SIN( RADIANS( `latitude` ) ) * SIN( RADIANS(-52.40362) ) + COS( RADIANS( `latitude` ) )
//* COS( RADIANS(-52.40362)) * COS( RADIANS( `longitude` ) - RADIANS(-24.05044)) ) * 6380 AS `distance`
//FROM `Location`
//WHERE
//ACOS( SIN( RADIANS( `latitude` ) ) * SIN( RADIANS(-52.40362) ) + COS( RADIANS( `latitude` ) )
//* COS( RADIANS(-52.40362)) * COS( RADIANS( `longitude` ) - RADIANS(-24.05044)) ) * 6380 < 10
//ORDER BY `distance`
        
        Query query = em.createQuery("select v from Vendedor v where v.mail = '" + pesquisa + "'", Produtos.class);
        List<Produtos> produts = null;
        try {

            produts = (List<Produtos>) query.getResultList();
           

        } catch (Exception e) {

            em.close();
            return null;
        }
        em.close();
        return produts;

    }
    
}
