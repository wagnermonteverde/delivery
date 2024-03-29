/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.dao;

import br.com.starsoft.social.model.beans.Usuario;
import br.com.starsoft.social.model.beans.Vendedor;
import br.com.starsoft.social.model.utils.TrataCaracteres;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;

/**
 *
 * @author wagner
 */
public class DAOVendedor extends DAO<Vendedor> {

    public DAOVendedor(Class<Vendedor> classe) {
        super(classe);
    }

    public Vendedor consultaEmail(String mail) {
        Vendedor v = null;
        EntityManager em = new JPAUtil().getEntityManager();
        Query query = em.createQuery("select v from Vendedor v where v.mail = '" + mail + "'", Vendedor.class);
        List<Vendedor> vendors = null;
        try {

            vendors = (List<Vendedor>) query.getResultList();
            v = vendors.get(0);

        } catch (Exception e) {

            em.close();
            return null;
        }
        em.close();
        return v;

    }

    public Vendedor consultaCnpj(String cnpj) {
        Vendedor v = null;
        EntityManager em = new JPAUtil().getEntityManager();
        Query query = em.createQuery("select v from Vendedor v where v.cnpj = '" + cnpj + "'", Vendedor.class);
        List<Vendedor> vendors = null;
        try {

            vendors = (List<Vendedor>) query.getResultList();
            v = vendors.get(0);

        } catch (Exception e) {

            em.close();
            return null;
        }
        em.close();
        return v;

    }

    public Vendedor consultaNome(String nome) {
        Vendedor v = null;
        EntityManager em = new JPAUtil().getEntityManager();
        Query query = em.createQuery("select v from Vendedor v where v.nome = '" + nome + "'", Vendedor.class);
        List<Vendedor> vendors = null;
        try {

            vendors = (List<Vendedor>) query.getResultList();
            v = vendors.get(0);

        } catch (Exception e) {

            em.close();
            return null;
        }
        em.close();
        return v;

    }

    public Vendedor consultaCpf(String cpf) {
        Vendedor v = null;
        EntityManager em = new JPAUtil().getEntityManager();
        Query query = em.createQuery("select v from Vendedor v where v.cpf = '" + cpf + "'", Vendedor.class);
        List<Vendedor> vendors = null;
        try {

            vendors = (List<Vendedor>) query.getResultList();
            v = vendors.get(0);

        } catch (Exception e) {

            em.close();
            return null;
        }
        em.close();
        return v;

    }
        public Vendedor consultaLink(String link) {
        Vendedor v = null;
        EntityManager em = new JPAUtil().getEntityManager();
        Query query = em.createQuery("select v from Vendedor v where v.link = '" + link + "'", Vendedor.class);
        List<Vendedor> vendors = null;
        try {

            vendors = (List<Vendedor>) query.getResultList();
            v = vendors.get(0);

        } catch (Exception e) {

            em.close();
            return null;
        }
        em.close();
        return v;

    }

    public Object consultaFantasia(String fantasia) {

        String caminho = "img/empresas/";
        fantasia = TrataCaracteres.retiraAcentosEspacos(fantasia);
        fantasia = caminho + fantasia + "/";

        Vendedor v = null;
        EntityManager em = new JPAUtil().getEntityManager();
        Query query = em.createQuery("select v from Vendedor v where v.diretorioImg = '" + fantasia + "'", Vendedor.class);
        List<Vendedor> vendors = null;
        try {

            vendors = (List<Vendedor>) query.getResultList();
            v = vendors.get(0);

        } catch (Exception e) {

            em.close();
            return null;
        }
        em.close();
        return v;

    }
}
