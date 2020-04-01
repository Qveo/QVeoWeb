package com.qveo.qveoweb.model;

import javax.persistence.*;
import java.sql.Date;
import java.util.Collection;

@Entity
public class Serie {
    private Integer id;
    private String titulo;
    private Date fechaInicio;
    private String sinopsis;
    private Integer temporadas;
    private Integer capitulos;
    private Collection<Actor> actores;
    private Collection<Director> directores;
    private Collection<Genero> generos;
    private Collection<Lista> listas;
    private Pais pais;
    private Collection<Plataforma> plataformas;

    @Id
    @Column(name = "ID")
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Basic
    @Column(name = "TITULO")
    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    @Basic
    @Column(name = "FECHA_INICIO")
    public Date getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    @Basic
    @Column(name = "SINOPSIS")
    public String getSinopsis() {
        return sinopsis;
    }

    public void setSinopsis(String sinopsis) {
        this.sinopsis = sinopsis;
    }

    @Basic
    @Column(name = "TEMPORADAS")
    public Integer getTemporadas() {
        return temporadas;
    }

    public void setTemporadas(Integer temporadas) {
        this.temporadas = temporadas;
    }

    @Basic
    @Column(name = "CAPITULOS")
    public Integer getCapitulos() {
        return capitulos;
    }

    public void setCapitulos(Integer capitulos) {
        this.capitulos = capitulos;
    }


    @ManyToMany
    @JoinTable(
            name ="actor_serie",
            joinColumns = @JoinColumn(name = "id_serie", nullable = false),
            inverseJoinColumns = @JoinColumn(name="id_actor", nullable = false)
    )
    public Collection<Actor> getActores() {
        return actores;
    }

    public void setActores(Collection<Actor> actores) {
        this.actores = actores;
    }

    @ManyToMany
    @JoinTable(
            name ="director_serie",
            joinColumns = @JoinColumn(name = "id_serie", nullable = false),
            inverseJoinColumns = @JoinColumn(name="id_director", nullable = false)
    )
    public Collection<Director> getDirectores() {
        return directores;
    }

    public void setDirectores(Collection<Director> directores) {
        this.directores = directores;
    }

    @ManyToMany
    @JoinTable(
            name ="genero_serie",
            joinColumns = @JoinColumn(name = "id_serie", nullable = false),
            inverseJoinColumns = @JoinColumn(name="id_genero", nullable = false)
    )
    public Collection<Genero> getGeneros() {
        return generos;
    }

    public void setGeneros(Collection<Genero> generos) {
        this.generos = generos;
    }

    @ManyToMany
    @JoinTable(
            name ="actor_serie",
            joinColumns = @JoinColumn(name = "id_serie", nullable = false),
            inverseJoinColumns = @JoinColumn(name="id_actor", nullable = false)
    )
    public Collection<Lista> getListas() {
        return listas;
    }

    public void setListas(Collection<Lista> listas) {
        this.listas = listas;
    }

    @ManyToOne
    @JoinColumn(name = "ID_PAIS", referencedColumnName = "ID", nullable = false)
    public Pais getPais() {
        return pais;
    }

    public void setPais(Pais pais) {
        this.pais = pais;
    }


    @ManyToMany
    @JoinTable(
            name ="serie_plataforma",
            joinColumns = @JoinColumn(name = "id_serie", nullable = false),
            inverseJoinColumns = @JoinColumn(name="id_plataforma", nullable = false)
    )
    public Collection<Plataforma> getPlataformas() {
        return plataformas;
    }

    public void setPlataformas(Collection<Plataforma> plataformas) {
        this.plataformas = plataformas;
    }
}
