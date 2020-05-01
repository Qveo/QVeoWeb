package com.qveo.qveoweb.model;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class PeliculaPlataformaId implements Serializable {
	
	private Long peliculaId;
	private Long plataformaId;
	
	public PeliculaPlataformaId() {
		
	}
	public PeliculaPlataformaId(Long peliculaId, Long plataformaId) {
		this.peliculaId = peliculaId;
		this.plataformaId = plataformaId;
	}
	public Long getPeliculaId() {
		return peliculaId;
	}
	public void setPeliculaId(Long peliculaId) {
		this.peliculaId = peliculaId;
	}
	public Long getPlataformaId() {
		return plataformaId;
	}
	public void setPlataformaId(Long plataformaId) {
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
