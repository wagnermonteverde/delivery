/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.testes;

import br.com.starsoft.social.model.beans.Produtos;
import br.com.starsoft.social.model.dao.DAO;
import java.util.List;

/**
 *
 * @author henrique
 */
public class TesteDaoPaginacao {

    public static void main(String[] args) {
        DAO<Produtos> dao = new DAO<Produtos>(Produtos.class);
        List<Produtos> lista = dao.listaTodos();
        List<Produtos> listaProdutos = dao.listaTodosPaginada(10, 20);
        for (Produtos produtos : listaProdutos) {
            System.out.println(produtos.toString());
        }
    }
}
