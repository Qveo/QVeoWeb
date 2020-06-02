package com.qveo.qveoweb.dto;

import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.model.Usuario;

import java.util.List;
import java.util.stream.Collectors;

public class PlataformaDto {
    private Integer id;
    private List <Integer> plataformas;

    public PlataformaDto() {
    }

    public PlataformaDto(Usuario usuario) {
        this.id = usuario.getId();
        this.plataformas= usuario.getPlataformas().stream().map(Plataforma::getId).collect(Collectors.toList());
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public List<Integer> getPlataformas() {
        return plataformas;
    }

    public void setPlataformas(List<Integer> plataformas) {
        this.plataformas = plataformas;
    }
}
