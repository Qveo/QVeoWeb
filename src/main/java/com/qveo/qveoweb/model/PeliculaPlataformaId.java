package com.qveo.qveoweb.model;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class PeliculaPlataformaId implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer peliculaId;
	private Integer plataformaId;
	
	public PeliculaPlataformaId() {
		
	}
	public PeliculaPlataformaId(Integer peliculaId, Integer plataformaId) {
		this.peliculaId = peliculaId;
		this.plataformaId = plataformaId;
	}
	public Integer getPeliculaId() {
		return peliculaId;
	}
	public void setPeliculaId(Integer peliculaId) {
		this.peliculaId = peliculaId;
	}
	public Integer getPlataformaId() {
		return plataformaId;
	}
	public void setPlataformaId(Integer plataformaId) {
		this.plataformaId = plataformaId;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PeliculaPlataformaId other = (PeliculaPlataformaId) obj;
		if (peliculaId == null) {
			if (other.peliculaId != null)
				return false;
		} else if (!peliculaId.equals(other.peliculaId))
			return false;
		if (plataformaId == null) {
			if (other.plataformaId != null)
				return false;
		} else if (!plataformaId.equals(other.plataformaId))
			return false;
		return true;
	}
	
	
	

}
