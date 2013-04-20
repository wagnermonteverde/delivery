/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.logic;

import br.com.starsoft.social.model.beans.Vendedor;
import br.com.starsoft.social.model.dao.DAOVendedor;
import br.com.starsoft.social.model.utils.TrataCaracteres;
import java.text.Normalizer;

/**
 *
 * @author henrique
 */
public class ControlerLinkPage {

    public static boolean empresaExiste(String nomeEmpresa) {
        DAOVendedor daoVendedor = new DAOVendedor(Vendedor.class);
        Vendedor consultaNome = daoVendedor.consultaNome(nomeEmpresa);
        String nomeFantasia = consultaNome.getNomeFantasia();
        nomeFantasia = TrataCaracteres.retiraAcentos(nomeFantasia);
        


        return false;
    }

    
}
