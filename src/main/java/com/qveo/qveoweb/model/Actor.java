package com.qveo.qveoweb.model;

import javax.persistence.*;
import java.util.Collection;

@Entity
public class Actor {
    private Integer id;
    private String nombre;
    private String sexo;
    private Pais pais;
    private Collection<Pelicula> peliculas;
    private Collection<Serie> series;

    @Id
    @Column(name = "ID")
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Basic
    @Column(name = "NOMBRE")
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Basic
    @Column(name = "SEXO")
    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    @ManyToOne
    @JoinColumn(name = "ID_PAIS", referencedColumnName = "ID", nullable = false)
    public Pais getPais() {
        return pais;
    }

    public void setPais(Pais pais) {
        this.pais = pais;
    }

    @ManyToMany(mappedBy = "actores")
    public Collection<Pelicula> getPeliculas() {
        return peliculas;
    }

    public void setPeliculas(Collection<Pelicula> peliculas) {
        this.peliculas = peliculas;
    }

    @ManyToMany(mappedBy = "actores")
    public Collection<Serie> getSeries() {
        return series;
    }

    public void setSeries(Collection<Serie> series) {
        this.series = series;
    }
}
