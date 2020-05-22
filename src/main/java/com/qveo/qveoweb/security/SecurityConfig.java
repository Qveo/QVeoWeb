package com.qveo.qveoweb.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

//@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		
		auth.inMemoryAuthentication()
		   .withUser("user1").password(passwordEncoder().encode("user1")).roles("USER")
           .and()
           .withUser("user2").password(passwordEncoder().encode("user2")).roles("USER")
           .and()
           .withUser("admin").password(passwordEncoder().encode("admin")).roles("ADMIN");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {

		String[] resources = new String[] { "/resources/css/**", "/resources/js/**", "/resources/vendor/**", "/resources/img/**" };

		http
			.csrf().disable()
			.authorizeRequests()
				.antMatchers(resources).permitAll()
				.antMatchers("/","/home").permitAll()
				.antMatchers("/usuario*").hasRole("ADMIN")
				.anyRequest()
				.authenticated()
				.and()
			.formLogin()
				.loginPage("/login")
				.permitAll()
				.defaultSuccessUrl("/usuario/form")
				//.permitAll()
						// .failureUrl("/error")
						// .usernameParameter("username")
						// .passwordParameter("password")
				.and()
			.logout()
				.logoutUrl("/logout")
				.logoutSuccessUrl("/")
				.invalidateHttpSession(true)
				.deleteCookies("JSESSIONID");
	}
	
	@Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}
