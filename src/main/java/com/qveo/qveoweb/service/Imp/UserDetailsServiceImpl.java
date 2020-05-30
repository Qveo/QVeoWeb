package com.qveo.qveoweb.service.Imp;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.qveo.qveoweb.dao.RolDao;
import com.qveo.qveoweb.dao.UsuarioDao;
import com.qveo.qveoweb.dto.UserDetailsDto;
import com.qveo.qveoweb.model.Rol;
import com.qveo.qveoweb.model.Usuario;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	UsuarioDao usuarioDao;
	
	@Autowired
	RolDao rolDao;

	@Override
	@Transactional
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		Usuario user = usuarioDao.findByEmail(userName);
				//.orElseThrow(() -> new UsernameNotFoundException("Email " + userName + " not found"));
		if(user == null) throw new UsernameNotFoundException("User not found.");
		//List<GrantedAuthority> authorities = getUserAuthority(user.getRol());
		List<GrantedAuthority> authorities = new ArrayList<>();
		authorities.add(new SimpleGrantedAuthority(user.getRol().getNombre()));
		return new UserDetailsDto(user.getEmail(), user.getPassword(), authorities);
	}
/*
	private List<GrantedAuthority> getUserAuthority(Rol userRol) {
		//Set<GrantedAuthority> roles = new HashSet<GrantedAuthority>();
		List<GrantedAuthority> grantedAuthorities = new ArrayList<>();
		grantedAuthorities.add(new SimpleGrantedAuthority(userRol.getNombre()));
		return grantedAuthorities;
	}
*/
}
