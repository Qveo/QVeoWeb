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
    private Collection<ActorSerie> actores;
    private Collection<DirectorSerie> directores;
    private Collection<GeneroSerie> generos;
    private Collection<ListaSerie> listas;
    private Pais pais;

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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Serie serie = (Serie) o;

        if (id != null ? !id.equals(serie.id) : serie.id != null) return false;
        if (titulo != null ? !titulo.equals(serie.titulo) : serie.titulo != null) return false;
        if (fechaInicio != null ? !fechaInicio.equals(serie.fechaInicio) : serie.fechaInicio != null) return false;
        if (sinopsis != null ? !sinopsis.equals(serie.sinopsis) : serie.sinopsis != null) return false;
        if (temporadas != null ? !temporadas.equals(serie.temporadas) : serie.temporadas != null) return false;
        if (capitulos != null ? !capitulos.equals(serie.capitulos) : serie.capitulos != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (titulo != null ? titulo.hashCode() : 0);
        result = 31 * result + (fechaInicio != null ? fechaInicio.hashCode() : 0);
        result = 31 * result + (sinopsis != null ? sinopsis.hashCode() : 0);
        result = 31 * result + (temporadas != null ? temporadas.hashCode() : 0);
        result = 31 * result + (capitulos != null ? capitulos.hashCode() : 0);
        return result;
    }

    @OneToMany(mappedBy = "serieByIdSerie")
    public Collection<ActorSerie> getActores() {
        return actores;
    }

    public void setActores(Collection<ActorSerie> actores) {
        this.actores = actores;
    }

    @OneToMany(mappedBy = "serieByIdSerie")
    public Collection<DirectorSerie> getDirectores() {
        return directores;
    }

    public void setDirectores(Collection<DirectorSerie> directores) {
        this.directores = directores;
    }

    @OneToMany(mappedBy = "serieByIdSerie")
    public Collection<GeneroSerie> getGeneros() {
        return generos;
    }

    public void setGeneros(Collection<GeneroSerie> generos) {
        this.generos = generos;
    }

    @OneToMany(mappedBy = "serieByIdSerie")
    public Collection<ListaSerie> getListas() {
        return listas;
    }

    public void setListas(Collection<ListaSerie> listas) {
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
}
