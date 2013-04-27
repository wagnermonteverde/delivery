/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.beans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;

/**
 *
 * @author wagner
 */
@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
public abstract class Vendedor implements Serializable {

    @Id
    @GeneratedValue
    private Integer id;
    private String nomeFantasia;
    private String link;
    private String mail;
    private String senha;
    private String descricao;
    private String imagemMiniatura;
    private String imagemLogo;
    private String tipo;
    private Status status;
    private Integer quantidadeProdutos;
    private String diretorioImg;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Calendar dataCadastro;
    @OneToOne
    private Endereco endereco;
    @OneToMany(fetch= FetchType.EAGER)
    @JoinColumn(name="id_vendedor")
    private List<Produtos> listaProdutos = new ArrayList<Produtos>();;

    public Vendedor() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNomeFantasia() {
        return nomeFantasia;
    }

    public void setNomeFantasia(String nomeFantasia) {
        this.nomeFantasia = nomeFantasia;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getDescricao() {
        return descricao;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public Integer getQuantidadeProdutos() {
        return quantidadeProdutos;
    }

    public void setQuantidadeProdutos(Integer quantidadeProdutos) {
        this.quantidadeProdutos = quantidadeProdutos;
    }

    public String getDiretorioImg() {
        return diretorioImg;
    }

    public void setDiretorioImg(String diretorioImg) {
        this.diretorioImg = diretorioImg;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getImagemMiniatura() {
        return imagemMiniatura;
    }

    public void setImagemMiniatura(String imagemMiniatura) {
        this.imagemMiniatura = imagemMiniatura;
    }

    public String getImagemLogo() {
        return imagemLogo;
    }

    public void setImagemLogo(String imagemLogo) {
        this.imagemLogo = imagemLogo;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public List<Produtos> getListaProdutos() {
        return listaProdutos;
    }

    public void setListaProdutos(List<Produtos> listaProdutos) {
        this.listaProdutos = listaProdutos;
    }

    public Calendar getDataCadastro() {
        return dataCadastro;
    }

    public void setDataCadastro(Calendar dataCadastro) {
        this.dataCadastro = dataCadastro;
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public void setProduto(Produtos p) {
        this.listaProdutos.add(p);
    }
}
