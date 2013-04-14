/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.logic;

import br.com.starsoft.social.model.beans.Vendedor;
import br.com.starsoft.social.model.dao.DAO;
import br.com.starsoft.social.model.dao.DAOVendedor;

/**
 *
 * @author wagner
 */
public class ControlerCadastroVendedor {

    public String VerificaEmailCadastrado(String email) {

        DAOVendedor daoVendedor = new DAOVendedor(Vendedor.class);

        return daoVendedor.consultaEmail(email) == null ? "true" : "false";

    }
}
