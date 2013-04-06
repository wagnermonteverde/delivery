/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.logic;

import br.com.starsoft.social.model.beans.Produtos;
import br.com.starsoft.social.model.dao.DAO;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import javax.xml.crypto.Data;

/**
 *
 * @author henrique
 */
public class ControlerCRUDProdutos {

    public static boolean cadastraProdutos(String titulo, String preco, String descricao) {
        try {
            DAO dao = new DAO(Object.class);

            Produtos p = new Produtos();
            p.setDescricao(descricao);
            p.setNome(titulo);
            p.setPreco(Double.parseDouble(preco));
            
            Date data = new Date(System.currentTimeMillis());
            Calendar calendar = new GregorianCalendar();
            
            calendar.setTime(data);
            
            p.setDataInclusao(calendar);

            dao.adiciona(p);

            return true;
        } catch (NumberFormatException numberFormatException) {
            return false;
        }

    }
}
