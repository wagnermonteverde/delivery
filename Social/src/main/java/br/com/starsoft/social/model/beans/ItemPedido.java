/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.beans;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

/**
 *
 * @author wagner
 * 
 * 
 */

@Entity
public class ItemPedido implements Serializable {
    
    
    @Id
    @GeneratedValue
    private Integer id;
    @OneToOne
    private Produtos produto;
    private Integer quantidade;
    
    

    public ItemPedido() {
    }

    
    public ItemPedido(Produtos produto, Integer quantidade) {
        this.produto = produto;
        this.quantidade = quantidade;
    }
    
    
    public Produtos getProduto() {
        return produto;
    }

    public void setProduto(Produtos produto) {
        this.produto = produto;
    }

    public Integer getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(Integer quantidade) {
        this.quantidade = quantidade;
    }

    @Override
    public String toString() {
        return "ItemPedido{" + "id=" + id + ", produto=" + produto + ", quantidade=" + quantidade + '}';
    }

    

    
    
}
