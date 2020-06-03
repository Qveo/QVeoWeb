package com.qveo.qveoweb.security;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import com.qveo.qveoweb.service.Imp.UserDetailsServiceImpl;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	UserDetailsServiceImpl userDetailsService;
	
	 @Override
	 public void configure(AuthenticationManagerBuilder auth) throws Exception { 
	     auth.userDetailsService(userDetailsService).passwordEncoder(getPasswordEncoder());
	 }

	@Override
	protected void configure(HttpSecurity http) throws Exception {

		String[] resources = new String[] { "/resources/css/**", "/resources/js/**", "/resources/vendor/**", "/resources/img/**" };

		http
			.csrf().disable()
			.authorizeRequests()
				.antMatchers(resources).permitAll()
				.antMatchers("/","/home").permitAll()
				.antMatchers("/ajax/series").permitAll()
				.antMatchers("/filtro/**").permitAll()
				.antMatchers("/peliculas/**").permitAll()
				.antMatchers("/serie/**").permitAll()
				.antMatchers("/login*").permitAll()
				.antMatchers("/admin/**").hasRole("ADMIN")
				.antMatchers("/usuario/form*").permitAll()
				.anyRequest()
				.authenticated()
				.and()
			.formLogin()
				.loginPage("/login")
				.permitAll()
				.defaultSuccessUrl("/")
				.failureUrl("/login?error=true")
				.and()
			.logout()
				.logoutUrl("/logout")
				.logoutSuccessUrl("/")
				.invalidateHttpSession(true)
				.deleteCookies("JSESSIONID")
				.permitAll();
		
	}
	 
	 @Bean
	 public PasswordEncoder getPasswordEncoder() {
		 return NoOpPasswordEncoder.getInstance();
	 }
}
