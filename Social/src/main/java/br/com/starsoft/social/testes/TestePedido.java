/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.testes;

import br.com.starsoft.social.model.beans.EstadoPedido;
import br.com.starsoft.social.model.beans.ItemPedido;
import br.com.starsoft.social.model.beans.Pedido;
import br.com.starsoft.social.model.beans.PessoaFisica;
import br.com.starsoft.social.model.beans.Produtos;
import br.com.starsoft.social.model.beans.Usuario;
import br.com.starsoft.social.model.beans.Vendedor;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author wagner
 */
public class TestePedido {

    public static void main(String[] args) {

        Produtos produtos = new Produtos();
        produtos.setNome("abroba");
        produtos.setPreco(3.0);
        Produtos produtos1 = new Produtos();
        produtos.setNome("abroba");
        produtos.setPreco(3.0);
        Produtos produtos2 = new Produtos();
        produtos.setNome("abroba");
        produtos.setPreco(3.0);

        List<ItemPedido> itens = new ArrayList<ItemPedido>();

        ItemPedido item = new ItemPedido(produtos, 1);
        ItemPedido item1 = new ItemPedido(produtos1, 1);
        ItemPedido item2 = new ItemPedido(produtos2, 1);
        
        itens.add(item);
        itens.add(item1);
        itens.add(item2);



        Vendedor vendedor = new PessoaFisica("00000000000", "wagner");

        Usuario usuario = new Usuario();
        usuario.setName("antonio");
        usuario.setMail("wagnermonteverde@hot.com");


        Pedido pedido;
//        pedido = new Pedido(vendedor, usuario,itens);
        


//        System.out.println(pedido);


//        pedido.setEstado(EstadoPedido.Negado);


//        System.out.println(pedido);
















    }
}
