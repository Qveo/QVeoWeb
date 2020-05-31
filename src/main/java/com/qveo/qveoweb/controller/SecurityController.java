package com.qveo.qveoweb.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qveo.qveoweb.service.UsuarioService;

@Controller
public class SecurityController {

	@Autowired
	UsuarioService usuarioService;

	@RequestMapping(value = "/username", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<?> currentUserName(Principal principal, Model model) {
		return ResponseEntity.ok(usuarioService.userLogged(principal.getName()));
	}

}
