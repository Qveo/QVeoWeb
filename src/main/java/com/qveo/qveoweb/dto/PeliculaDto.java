package com.qveo.qveoweb.dto;

import java.util.Collection;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.qveo.qveoweb.model.Actor;
import com.qveo.qveoweb.model.Director;
import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Pais;
import com.qveo.qveoweb.model.Plataforma;

public class PeliculaDto {
		
		private Integer id;
		private String titulo;
	    private String duracion;
	    private String guion;
	    private String poster;
	    private String sinopsis;
	    @DateTimeFormat(pattern = "dd-MM-yyyy")
	    private Date anio;
	    private Pais pais;
	    private Collection<Actor> actores;
	    private Collection<Genero> generos;
	    private Collection<Director> directores;
	    private Collection<Plataforma> plataformas;
	    
	    public PeliculaDto() {
	    	
	    }
	    
		public PeliculaDto(Integer id, String titulo, String duracion, String guion, String poster, String sinopsis, Date anio,
				Pais pais, Collection<Actor> actores, Collection<Genero> generos, Collection<Director> directores, Collection<Plataforma> plataformas) {
			this.id = id;
			this.titulo = titulo;
			this.duracion = duracion;
			this.guion = guion;
			this.poster = poster;
			this.sinopsis = sinopsis;
			this.anio = anio;
			this.pais = pais;
			this.actores = actores;
			this.generos = generos;
			this.directores = directores;
			this.plataformas = plataformas;
		}

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getTitulo() {
			return titulo;
		}

		public void setTitulo(String titulo) {
			this.titulo = titulo;
		}

		public String getDuracion() {
			return duracion;
		}

		public void setDuracion(String duracion) {
			this.duracion = duracion;
		}

		public String getGuion() {
			return guion;
		}

		public void setGuion(String guion) {
			this.guion = guion;
		}

		public String getPoster() {
			return poster;
		}

		public void setPoster(String poster) {
			this.poster = poster;
		}

		public String getSinopsis() {
			return sinopsis;
		}

		public void setSinopsis(String sinopsis) {
			this.sinopsis = sinopsis;
		}
		
		
		public Date getAnio() {
			return anio;
		}

		public void setAnio(Date anio) {
			this.anio = anio;
		}

		public Pais getPais() {
			return pais;
		}

		public void setPais(Pais pais) {
			this.pais = pais;
		}

		public Collection<Actor> getActores() {
			return actores;
		}

		public void setActores(Collection<Actor> actores) {
			this.actores = actores;
		}

		public Collection<Genero> getGeneros() {
			return generos;
		}

		public void setGeneros(Collection<Genero> generos) {
			this.generos = generos;
		}

		public Collection<Director> getDirectores() {
			return directores;
		}

		public void setDirectores(Collection<Director> directores) {
			this.directores = directores;
		}

		public Collection<Plataforma> getPlataformas() {
			return plataformas;
		}

		public void setPlataformas(Collection<Plataforma> plataformas) {
			this.plataformas = plataformas;
		}
	    
		
	    

}
