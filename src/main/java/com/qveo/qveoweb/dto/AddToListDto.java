package com.qveo.qveoweb.dto;

public class AddToListDto {
	
	private Integer idUser;
	private Integer idResource;
	
	public AddToListDto() {
	}
	public AddToListDto(Integer idUser, Integer idResource) {
		this.idUser = idUser;
		this.idResource = idResource;
	}
	public Integer getIdUser() {
		return idUser;
	}
	public void setIdUser(Integer idUser) {
		this.idUser = idUser;
	}
	public Integer getIdResource() {
		return idResource;
	}
	public void setIdResource(Integer idResource) {
		this.idResource = idResource;
	}
}
