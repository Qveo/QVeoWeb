package com.qveo.qveoweb.model;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import java.sql.Date;
import java.util.Collection;

@Entity
public class Serie {
    private Integer id;
    @NotNull(message = "No puede el titulo estar vacio")
    @Size(min = 2, max=40,message = "El titulo debe ser entre 2 a 40 caracteres")
    private String titulo;
    private Date fechaInicio;
    @NotNull(message = "No puede estar vacia la sinopsis")
    @Size(min=10, max=400,message = "La sinopsis debe ser de 400 caracteres")
    private String sinopsis;
    @NotNull(message = "Debe especificar la cantidad de temporadas")
    @Min(value =1,message = "La temporada minimo debe ser 1") @Max(value = 20, message = "Las temporadas maximas debe ser 20")
    private Integer temporadas;
    @NotNull(message = "Debe especificar la cantidad de capitulos")
    @Min(value =1,message = "Los capitulos minimo debe ser 1") @Max(value = 300, message = "Los capitulos puede ser de 300")
    private Integer capitulos;
    private Collection<Actor> actores;
    private Collection<Director> directores;
    private Collection<Genero> generos;
    private Collection<Lista> listas;
    @NotNull(message = "Escoja un pais de la lista")
    private Pais pais;
    private Collection<Plataforma> plataformas;
    private String poster;
    
    

    public Serie() {
	}
    
	public Serie(String titulo, Date fechaInicio, String sinopsis, Integer temporadas, Integer capitulos,
			Collection<Director> directores, Collection<Genero> generos, Pais pais, Collection<Plataforma> plataformas,
			String poster) {
		this.titulo = titulo;
		this.fechaInicio = fechaInicio;
		this.sinopsis = sinopsis;
		this.temporadas = temporadas;
		this.capitulos = capitulos;
		this.directores = directores;
		this.generos = generos;
		this.pais = pais;
		this.plataformas = plataformas;
		this.poster = poster;
	}



	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
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

    @ManyToMany(mappedBy="series")
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
    
    @Basic
    @Column(name = "POSTER")
    public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
	}

	@Override
	public String toString() {
		return "Serie [titulo=" + titulo + ", fechaInicio=" + fechaInicio + ", sinopsis=" + sinopsis + ", temporadas="
				+ temporadas + ", capitulos=" + capitulos + ", directores=" + directores + ", generos=" + generos
				+ ", pais=" + pais + ", plataformas=" + plataformas + ", poster=" + poster + "]";
	}

}
