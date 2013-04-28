package br.com.starsoft.social.model.beans;
// Generated 28/04/2013 15:50:49 by Hibernate Tools 3.2.1.GA

import javax.persistence.Entity;
import javax.persistence.Id;




/**
 * Cidade generated by hbm2java
 */
@Entity
public class Cidade  implements java.io.Serializable {

     @Id
     private Integer id;
     private String nome;
     private Integer estado;

    public Cidade() {
    }

    public Cidade(String nome, Integer estado) {
       this.nome = nome;
       this.estado = estado;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getNome() {
        return this.nome;
    }
    
    public void setNome(String nome) {
        this.nome = nome;
    }
    public Integer getEstado() {
        return this.estado;
    }
    
    public void setEstado(Integer estado) {
        this.estado = estado;
    }




}

