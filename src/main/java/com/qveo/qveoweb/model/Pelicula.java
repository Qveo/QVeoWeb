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
    private String genero;
    private Date anio;
    private Collection<ActorPelicula> actores;
    private Collection<GeneroPelicula> peliculas;
    private Collection<ListaPelicula> listas;
    private Pais pais;
    private Collection<PeliculaDirector> directores;
    private Collection<PeliculaPlataforma> plataformas;

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
    @Column(name = "GENERO")
    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    @Basic
    @Column(name = "ANIO")
    public Date getAnio() {
        return anio;
    }

    public void setAnio(Date anio) {
        this.anio = anio;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Pelicula pelicula = (Pelicula) o;

        if (id != null ? !id.equals(pelicula.id) : pelicula.id != null) return false;
        if (titulo != null ? !titulo.equals(pelicula.titulo) : pelicula.titulo != null) return false;
        if (duracion != null ? !duracion.equals(pelicula.duracion) : pelicula.duracion != null) return false;
        if (guion != null ? !guion.equals(pelicula.guion) : pelicula.guion != null) return false;
        if (poster != null ? !poster.equals(pelicula.poster) : pelicula.poster != null) return false;
        if (sinopsis != null ? !sinopsis.equals(pelicula.sinopsis) : pelicula.sinopsis != null) return false;
        if (genero != null ? !genero.equals(pelicula.genero) : pelicula.genero != null) return false;
        if (anio != null ? !anio.equals(pelicula.anio) : pelicula.anio != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (titulo != null ? titulo.hashCode() : 0);
        result = 31 * result + (duracion != null ? duracion.hashCode() : 0);
        result = 31 * result + (guion != null ? guion.hashCode() : 0);
        result = 31 * result + (poster != null ? poster.hashCode() : 0);
        result = 31 * result + (sinopsis != null ? sinopsis.hashCode() : 0);
        result = 31 * result + (genero != null ? genero.hashCode() : 0);
        result = 31 * result + (anio != null ? anio.hashCode() : 0);
        return result;
    }

    @OneToMany(mappedBy = "peliculaByIdPelicula")
    public Collection<ActorPelicula> getActores() {
        return actores;
    }

    public void setActores(Collection<ActorPelicula> actores) {
        this.actores = actores;
    }

    @OneToMany(mappedBy = "peliculaByIdPelicula")
    public Collection<GeneroPelicula> getPeliculas() {
        return peliculas;
    }

    public void setPeliculas(Collection<GeneroPelicula> peliculas) {
        this.peliculas = peliculas;
    }

    @OneToMany(mappedBy = "peliculaByIdPelicula")
    public Collection<ListaPelicula> getListas() {
        return listas;
    }

    public void setListas(Collection<ListaPelicula> listas) {
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

    @OneToMany(mappedBy = "peliculaByIdPelicula")
    public Collection<PeliculaDirector> getDirectores() {
        return directores;
    }

    public void setDirectores(Collection<PeliculaDirector> directores) {
        this.directores = directores;
    }

    @OneToMany(mappedBy = "peliculaByIdPelicula")
    public Collection<PeliculaPlataforma> getPlataformas() {
        return plataformas;
    }

    public void setPlataformas(Collection<PeliculaPlataforma> plataformas) {
        this.plataformas = plataformas;
    }
}
