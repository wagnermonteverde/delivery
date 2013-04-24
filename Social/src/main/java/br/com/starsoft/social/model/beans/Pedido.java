/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.beans;

import java.util.List;

/**
 *
 * @author henrique
 */
public class Pedido {
    private int id;
    private int idComprador;
    private int idLoja;
    private List<Produtos> produtos;
    private EstadoPedido estado;

    public Pedido(int id, int idComprador, int idLoja, List<Produtos> produtos, EstadoPedido estado) {
        this.id = id;
        this.idComprador = idComprador;
        this.idLoja = idLoja;
        this.produtos = produtos;
        this.estado = estado;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdComprador() {
        return idComprador;
    }

    public void setIdComprador(int idComprador) {
        this.idComprador = idComprador;
    }

    public int getIdLoja() {
        return idLoja;
    }

    public void setIdLoja(int idLoja) {
        this.idLoja = idLoja;
    }

    public List<Produtos> getProdutos() {
        return produtos;
    }

    public void setProdutos(List<Produtos> produtos) {
        this.produtos = produtos;
    }

    public EstadoPedido getEstado() {
        return estado;
    }

    public void setEstado(EstadoPedido estado) {
        this.estado = estado;
    }

    @Override
    public String toString() {
        return "Pedido{" + "id=" + id + ", idComprador=" + idComprador + ", idLoja=" + idLoja + ", produtos=" + produtos + ", estado=" + estado + '}';
    }
    
    
    
    
}
