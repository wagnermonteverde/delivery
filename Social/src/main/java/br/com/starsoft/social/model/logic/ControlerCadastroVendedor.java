/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.logic;

import br.com.starsoft.social.model.beans.Vendedor;
import br.com.starsoft.social.model.dao.DAO;
import br.com.starsoft.social.model.dao.DAOVendedor;
import br.com.starsoft.social.model.utils.RetiraCaracteres;

/**
 *
 * @author wagner
 */
public class ControlerCadastroVendedor {

    public String verificaEmailCadastrado(String email) {

        DAOVendedor daoVendedor = new DAOVendedor(Vendedor.class);
        return daoVendedor.consultaEmail(email) == null ? "true" : "false";

    }

    public String verificaCpfCadastrado(String cpf) {

        cpf = RetiraCaracteres.retiraCaracteresNaoNumericos(cpf);
        DAOVendedor daoVendedor = new DAOVendedor(Vendedor.class);

        return daoVendedor.consultaCpf(cpf) == null ? "true" : "false";


    }

    public String verificaCnpjCadastrado(String cnpj) {

        cnpj = RetiraCaracteres.retiraCaracteresNaoNumericos(cnpj);
        DAOVendedor daoVendedor = new DAOVendedor(Vendedor.class);

        return daoVendedor.consultaCnpj(cnpj) == null ? "true" : "false";

    }
}
