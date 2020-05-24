package com.qveo.qveoweb.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.qveo.qveoweb.service.UsuarioService;
import com.qveo.qveoweb.service.Imp.UserDetailsServiceImpl;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	UserDetailsServiceImpl userDetailsService;

	@Override
	protected void configure(HttpSecurity http) throws Exception {

		String[] resources = new String[] { "/resources/css/**", "/resources/js/**", "/resources/vendor/**", "/resources/img/**" };

		http
			.csrf().disable()
			.authorizeRequests()
				.antMatchers(resources).permitAll()
				.antMatchers("/","/home").permitAll()
				.antMatchers("/login*").permitAll()
				.antMatchers("/usuario/form/**").permitAll()
				.antMatchers("/usuario/list").hasRole("user")
				.anyRequest()
				.authenticated()
				.and()
			.formLogin()
				.loginPage("/login")
				//.loginProcessingUrl("/login")
				.permitAll()
				.defaultSuccessUrl("/")
				//.successHandler(myAuthenticationSuccessHandler())
				//.permitAll()
				.failureUrl("/login?error=true")
						// .usernameParameter("username")
						// .passwordParameter("password")
				.and()
			.logout()
				.logoutUrl("/logout")
				.logoutSuccessUrl("/")
				.invalidateHttpSession(true)
				.deleteCookies("JSESSIONID")
				.permitAll();
		
	}
	
	 @Override
	 public void configure(AuthenticationManagerBuilder auth) throws Exception { 
	        auth.userDetailsService(userDetailsService);     
	 }
	 
	 @Bean
	 public PasswordEncoder getPasswordEncoder() {
		 return NoOpPasswordEncoder.getInstance();
	 }

}
