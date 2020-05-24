package com.qveo.qveoweb.dto;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.util.CollectionUtils;

import java.util.*;
import java.util.stream.Collectors;

public class UserDetailsDto implements UserDetails {
	
	private String userName;
	private String password;
	private Collection<GrantedAuthority> authorities;
	
	

	public UserDetailsDto() {
	}

	public UserDetailsDto(String userName, String password, Collection<GrantedAuthority> authorities) {
		this.userName = userName;
		this.password = password;
		this.authorities = authorities;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}

	@Override
	public String getPassword() {
		return password;
	}

	@Override
	public String getUsername() {
		return userName;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}
/*
	private Integer id;
	
	public UserDetailsDto(Integer id, String username, String password, boolean accountNonExpired, boolean accountNonLocked,
			boolean credentialsNonExpired, boolean enabled, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
		this.id = id;
	}

	
	//public UserDetailsDto(String username, String password)
	
    public Integer getId() {
        return id;
    }


    
    */
    

}
