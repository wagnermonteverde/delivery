/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.logic;

import br.com.starsoft.social.model.beans.Vendedor;
import br.com.starsoft.social.model.dao.DAOVendedor;
import java.util.List;

/**
 *
 * @author wagner
 */
public class ControlerExibeVendedores {

    public List<Vendedor> listaVendedores() {

        DAOVendedor daoVendedor = new DAOVendedor(Vendedor.class);

        List<Vendedor> listVendedor = daoVendedor.listaTodos();

        return listVendedor;
    }
}
