/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.testes;

import br.com.starsoft.social.model.beans.Location;
import br.com.starsoft.social.model.beans.Produtos;
import br.com.starsoft.social.model.dao.DAOProduto;
import java.util.List;

/**
 *
 * @author henrique
 */
public class TesteBuscaPaginada {

    public static void main(String[] args) {

//            DAO<Produtos> dao = new DAO<Produtos>(Produtos.class);
        DAOProduto dao = new DAOProduto(Produtos.class);
        List<Produtos> lista = dao.listaTodos();
        Location location = new Location();

        List<Produtos> listaProdutos = dao.buscaPaginada(21, 36, location, "");
        int i = 0;
        for (Produtos produtos : listaProdutos) {
            i++;
            System.out.println(i + "  " + produtos.toString() + "\n");

        }



    }
}
