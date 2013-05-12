/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.beans;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import javax.mail.FetchProfile;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;

/**
 *
 * @author henrique
 * @version wagner
 *
 */
@Entity
public class Pedido implements Serializable {

    @Id
    private int id;
    @OneToOne
    private Usuario Comprador;
    @OneToOne
    private Vendedor idVendedor;
    @OneToMany
    @JoinColumn(name = "id_pedido")
    private List<ItemPedido> itens;
    private EstadoPedido estado;
    private Double total;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Calendar dataPedido;

    public Pedido() {
    }

    public Pedido(Usuario Comprador, Vendedor idVendedor, EstadoPedido estado) {
        this.Comprador = Comprador;
        this.idVendedor = idVendedor;
        this.estado = estado;
        this.total = 0.00;
        this.itens = new ArrayList<ItemPedido>();

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Usuario getComprador() {
        return Comprador;
    }

    public void setComprador(Usuario Comprador) {
        this.Comprador = Comprador;
    }

    public Vendedor getIdVendedor() {
        return idVendedor;
    }

    public void setIdVendedor(Vendedor idVendedor) {
        this.idVendedor = idVendedor;
    }

    public List<ItemPedido> getItens() {
        return itens;
    }

    public void setItens(List<ItemPedido> itens) {
        this.itens = itens;
    }

    public EstadoPedido getEstado() {
        return estado;
    }

    public void setEstado(EstadoPedido estado) {
        this.estado = estado;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public Calendar getDataPedido() {
        return dataPedido;
    }

    public void setDataPedido(Calendar dataPedido) {
        this.dataPedido = dataPedido;
    }

    public String retornaTotal() {

        return "30,00";

    }

    public void adicionaIten(ItemPedido iten) {
        this.itens.add(iten);
        this.total =valorTotal(iten);

    }

    public Double valorTotal(ItemPedido iten) {
        Double total = 0.0;
        for (ItemPedido i : this.itens) {

            total += i.getProduto().getPreco();

        }

        return total;

    }

    @Override
    public String toString() {
        return "Pedido{" + "id=" + id + ", Comprador=" + Comprador + ", idVendedor=" + idVendedor + ", itens=" + itens + ", estado=" + estado + ", total=" + total + ", dataPedido=" + dataPedido + '}';
    }
}
