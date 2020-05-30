package com.qveo.qveoweb.dto;

import com.qveo.qveoweb.model.Usuario;

public class ContrasenaDto {
    private Integer id;
    private String actual;
    private String nueva;
    private String confirmar;

    public ContrasenaDto() {
    }

    public ContrasenaDto(Usuario usuario) {
        this.id = usuario.getId();
    }

    public String getNueva() {
        return nueva;
    }

    public void setNueva(String nueva) {
        this.nueva = nueva;
    }

    public String getConfirmar() {
        return confirmar;
    }

    public void setConfirmar(String confirmar) {
        this.confirmar = confirmar;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getActual() {
        return actual;
    }

    public void setActual(String actual) {
        this.actual = actual;
    }
}
