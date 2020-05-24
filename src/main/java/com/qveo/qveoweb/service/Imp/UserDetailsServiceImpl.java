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

import com.qveo.qveoweb.dao.UsuarioDao;
import com.qveo.qveoweb.dto.UserDetailsDto;
import com.qveo.qveoweb.model.Rol;
import com.qveo.qveoweb.model.Usuario;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	UsuarioDao usuarioDao;

	@Override
	@Transactional
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		Usuario user = usuarioDao.findByEmail(userName);
		List<GrantedAuthority> authorities = getUserAuthority(user.getRol());
		return new UserDetailsDto(user.getEmail(), user.getPassword(), authorities);
	}

	private List<GrantedAuthority> getUserAuthority(Rol userRol) {
		Set<GrantedAuthority> roles = new HashSet<GrantedAuthority>();
		roles.add(new SimpleGrantedAuthority(userRol.getNombre()));
		List<GrantedAuthority> grantedAuthorities = new ArrayList<>(roles);
		return grantedAuthorities;
	}

	/*
	 * @Override
	 * 
	 * @Transactional public UserDetails loadUserByUsername(String username) throws
	 * UsernameNotFoundException { Usuario appUser =
	 * usuarioDao.findByEmail(username) .orElseThrow(() -> new
	 * UsernameNotFoundException("No existe usuario"));
	 * 
	 * GrantedAuthority grantedAuthority = new
	 * SimpleGrantedAuthority(appUser.getRol().getNombre()); List<GrantedAuthority>
	 * grantList = new ArrayList<GrantedAuthority>();
	 * grantList.add(grantedAuthority);
	 * 
	 * //UserDetails user = (UserDetails) new UserDetailsDto(appUser.getId(), ,
	 * appUser.getPassword(), // true, true, true, true, grantList);
	 * 
	 * return new
	 * org.springframework.security.core.userdetails.User(appUser.getEmail(),
	 * appUser.getPassword(), true, true, true, true, grantList); }
	 */
}
