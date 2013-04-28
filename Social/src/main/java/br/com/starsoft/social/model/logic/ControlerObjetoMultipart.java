/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.logic;

import br.com.starsoft.social.model.beans.Produtos;
import br.com.starsoft.social.model.beans.Vendedor;
import java.util.Map;

/**
 *
 * @author wagner
 */
public class ControlerObjetoMultipart {

    public void saveObjeto(Map<String, String> map, Vendedor vendedor) {

        
        
        String origem = map.get("tipo");
        String id = map.get("id");




        if (origem.equals("prod")) {

            if (id == null) {
                
                persisteProduto(map, vendedor);

            }else{
            
            
                atualizaproduto(map,vendedor);
                
            
            }



        }



    }

    private void persisteProduto(Map<String, String> map, Vendedor vendedor) {

        ControlerCRUDProdutos controlerCRUDProdutos = new ControlerCRUDProdutos();

        controlerCRUDProdutos.cadastraProdutos(map, vendedor);


    }

    private void atualizaproduto(Map<String, String> map, Vendedor vendedor) {
        
         ControlerCRUDProdutos controlerCRUDProdutos = new ControlerCRUDProdutos();
         controlerCRUDProdutos.atualizaProdutos(map, vendedor);
        
    }
}
