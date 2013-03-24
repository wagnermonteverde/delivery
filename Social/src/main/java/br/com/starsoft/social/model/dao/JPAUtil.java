package br.com.starsoft.social.model.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author wagner
 *
 */
public class JPAUtil {

    private static EntityManagerFactory emf = Persistence
            .createEntityManagerFactory("delivery");

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void close(EntityManager em) {
        em.close();
    }
}
