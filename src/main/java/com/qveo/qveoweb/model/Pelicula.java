package com.qveo.qveoweb.model;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Time;
import java.util.Collection;

@Entity
public class Pelicula {
    private Integer id;
    private String titulo;
    private Time duracion;
    private String guion;
    private String poster;
    private String sinopsis;
    private Date anio;
    private Collection<Actor> actores;
    private Collection<Genero> peliculas;
    private Collection<Lista> listas;
    private Pais pais;
    private Collection<Director> directores;
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
    @Column(name = "DURACION")
    public Time getDuracion() {
        return duracion;
    }

    public void setDuracion(Time duracion) {
        this.duracion = duracion;
    }

    @Basic
    @Column(name = "GUION")
    public String getGuion() {
        return guion;
    }

    public void setGuion(String guion) {
        this.guion = guion;
    }

    @Basic
    @Column(name = "POSTER")
    public String getPoster() {
        return poster;
    }

    public void setPoster(String poster) {
        this.poster = poster;
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
    @Column(name = "ANIO")
    public Date getAnio() {
        return anio;
    }

    public void setAnio(Date anio) {
        this.anio = anio;
    }

    @ManyToMany
    @JoinTable(
            name ="actor_pelicula",
            joinColumns = @JoinColumn(name = "id_pelicula", nullable = false),
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
            name ="genero_pelicula",
            joinColumns = @JoinColumn(name = "id_pelicula", nullable = false),
            inverseJoinColumns = @JoinColumn(name="id_genero", nullable = false)
    )
    public Collection<Genero> getPeliculas() {
        return peliculas;
    }

    public void setPeliculas(Collection<Genero> peliculas) {
        this.peliculas = peliculas;
    }

    @ManyToMany(mappedBy="peliculas")
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
            name ="pelicula_director",
            joinColumns = @JoinColumn(name = "id_pelicula", nullable = false),
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
            name ="pelicula_plataforma",
            joinColumns = @JoinColumn(name = "id_pelicula", nullable = false),
            inverseJoinColumns = @JoinColumn(name="id_plataforma", nullable = false)
    )
    public Collection<Plataforma> getPlataformas() {
        return plataformas;
    }

    public void setPlataformas(Collection<Plataforma> plataformas) {
        this.plataformas = plataformas;
    }
}
