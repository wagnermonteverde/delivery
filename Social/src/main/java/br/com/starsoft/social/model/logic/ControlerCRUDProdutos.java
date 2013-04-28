/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.logic;

import br.com.starsoft.social.model.beans.Categoria;
import br.com.starsoft.social.model.beans.Produtos;
import br.com.starsoft.social.model.beans.Vendedor;
import br.com.starsoft.social.model.dao.DAO;
import java.io.File;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Map;

/**
 *
 * @author henrique
 */
public class ControlerCRUDProdutos {

    public boolean cadastraProdutos(Map map, Vendedor vendedor) {
        try {

            DAO<Produtos> dao = new DAO(Produtos.class);
            DAO<Vendedor> daovend = new DAO(Vendedor.class);
            Categoria categoria1 = null;

            String descricao = (String) map.get("detalhes");
            String titulo = (String) map.get("titulo");
            String preco = (String) map.get("valor");
            String categoria = (String) map.get("categoria");
            String nomeArquivo = (String) map.get("arquivo");

            preco = preco.replace(",", ".");
            System.out.println("preco");

            if (categoria.equalsIgnoreCase("bebida")) {
                categoria1 = categoria1.Bebida;
            } else {
                categoria1 = categoria1.Comida;
            }

            Produtos p = new Produtos();
            p.setDescricao(descricao);
            p.setNome(titulo);
            p.setPreco(Double.parseDouble(preco));
            p.setCategoria(categoria1);
            p.setImagem(vendedor.getDiretorioImg() + nomeArquivo);

            Date data = new Date(System.currentTimeMillis());
            Calendar calendar = new GregorianCalendar();

            calendar.setTime(data);

            p.setDataInclusao(calendar);

            dao.adiciona(p);

            vendedor.setProduto(p);

            daovend.atualiza(vendedor);

            return true;
        } catch (NumberFormatException numberFormatException) {
            return false;
        }

    }

    public boolean atualizaProdutos(Map map, Vendedor vendedor) {
        try {

            DAO<Produtos> dao = new DAO(Produtos.class);
            DAO<Vendedor> daovend = new DAO(Vendedor.class);

            Categoria categoria1 = null;

            String descricao = (String) map.get("detalhes");
            String titulo = (String) map.get("titulo");
            String preco = (String) map.get("valor");
            String categoria = (String) map.get("categoria");
            String id = (String) map.get("id");

            if (categoria.equalsIgnoreCase("bebida")) {
                categoria1 = categoria1.Bebida;
            } else {
                categoria1 = categoria1.Comida;
            }

            Produtos p = dao.buscaPorId(Integer.parseInt(id));
            p.setDescricao(descricao);
            p.setNome(titulo);
            p.setPreco(Double.parseDouble(preco));
            p.setCategoria(categoria1);

            Date data = new Date(System.currentTimeMillis());
            Calendar calendar = new GregorianCalendar();

            calendar.setTime(data);

            p.setDataInclusao(calendar);

            dao.atualiza(p);



            return true;
        } catch (NumberFormatException numberFormatException) {
            return false;
        }
    }

    public void deletaImagemProduto(String caminhoAbsolutoImagem) {

//      File fg = new File("/home/wagner/Documentos/Social/Social/target/Social-1/img/empresas/wagnerlanches/03481000407727486.jpg");
        File fg = new File(caminhoAbsolutoImagem);
        fg.delete();

    }
}
