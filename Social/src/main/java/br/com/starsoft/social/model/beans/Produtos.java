/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.beans;

import java.text.DateFormat;
import java.util.Calendar;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;
import javax.persistence.Temporal;

/**
 *
 * @author wagner
 */
 @Entity

@Table(name = "Produtos")
public class Produtos {

    @Id
    @GeneratedValue
    private Integer id;
    private Integer idVendedor;
    private String nome;
    private Categoria categoria;
    private Double preco;
    private String descricao;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Calendar dataInclusao;

    public Produtos() {
    }

    public Produtos(Integer id, Integer idVendedor, String nome, Categoria categoria, Double preco, String descricao, Calendar dataInclusao) {
        this.id = id;
        this.idVendedor = idVendedor;
        this.nome = nome;
        this.categoria = categoria;
        this.preco = preco;
        this.descricao = descricao;
        this.dataInclusao = dataInclusao;
    }

    public Integer getIdVendedor() {
        return idVendedor;
    }

    public void setIdVendedor(Integer idVendedor) {
        this.idVendedor = idVendedor;
    }

  

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }
    

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Double getPreco() {
        return preco;
    }

    public void setPreco(Double preco) {
        this.preco = preco;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getDataInclusao() {
        return dataInclusao.getTime().toString();
    }

    public void setDataInclusao(Calendar dataInclusao) {
        this.dataInclusao = dataInclusao;
    }


    @Override
    public int hashCode() {
        int hash = 7;
        return hash;
    }


    public void setDataInclusao(DateFormat dateFormat) {
        throw new UnsupportedOperationException("Not yet implemented");
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Produtos other = (Produtos) obj;
        if (this.id != other.id && (this.id == null || !this.id.equals(other.id))) {
            return false;
        }
        if (this.idVendedor != other.idVendedor && (this.idVendedor == null || !this.idVendedor.equals(other.idVendedor))) {
            return false;
        }
        if ((this.nome == null) ? (other.nome != null) : !this.nome.equals(other.nome)) {
            return false;
        }
        if (this.categoria != other.categoria) {
            return false;
        }
        if (this.preco != other.preco && (this.preco == null || !this.preco.equals(other.preco))) {
            return false;
        }
        if ((this.descricao == null) ? (other.descricao != null) : !this.descricao.equals(other.descricao)) {
            return false;
        }
        if (this.dataInclusao != other.dataInclusao && (this.dataInclusao == null || !this.dataInclusao.equals(other.dataInclusao))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Produtos{" + "id=" + id + ", idVendedor=" + idVendedor + ", nome=" + nome + ", categoria=" + categoria + ", preco=" + preco + ", descricao=" + descricao + ", dataInclusao=" + dataInclusao + '}';
    }

 
}
