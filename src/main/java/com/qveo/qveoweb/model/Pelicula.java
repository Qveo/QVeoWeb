package com.qveo.qveoweb.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.sql.Time;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;

@Entity
public class Pelicula {
	
	
    private Integer id;
    
    /*@NotNull*/
    private String titulo;
    
   /* @Pattern(regexp = "[\\d]")*/
    private Time duracion;
    private String guion;
    private String poster;
    private String sinopsis;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date anio;
    private Collection<Actor> actores;
    private Collection<Genero> generos;
    private Pais pais;
    private Collection<Director> directores;
    private Collection<Usuario> usuarios;
    private Set<PeliculaPlataforma> peliculaPlataformas = new HashSet<PeliculaPlataforma>();

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
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
    public Collection<Genero> getGeneros() {
        return generos;
    }

    public void setGeneros(Collection<Genero> generos) {
        this.generos = generos;
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
    

    @OneToMany(mappedBy = "pelicula")
	public Set<PeliculaPlataforma> getPeliculaPlataformas() {
		return peliculaPlataformas;
	}

	public void setPeliculaPlataformas(Set<PeliculaPlataforma> peliculaPlataformas) {
		this.peliculaPlataformas = peliculaPlataformas;
	}

	@ManyToMany(mappedBy = "peliculas")
	public Collection<Usuario> getUsuarios() {
		return usuarios;
	}

	public void setUsuarios(Collection<Usuario> usuarios) {
		this.usuarios = usuarios;
	}

    public String plataformasConcatenadas(){
        return peliculaPlataformas.stream().map(PeliculaPlataforma::getPlataforma).map(Plataforma::getNombre).collect(Collectors.joining(", "));
    }

	@Override
	public String toString() {
		return "Pelicula [id=" + id + ", titulo=" + titulo + ", duracion=" + duracion + ", guion=" + guion + ", poster="
				+ poster + ", sinopsis=" + sinopsis + ", anio=" + anio + ", actores=" + actores + ", generos=" + generos
				+ ", pais=" + pais + ", directores=" + directores + ", usuarios=" + usuarios + ", peliculaPlataformas="
				+ peliculaPlataformas + "]";
	}



	

}

