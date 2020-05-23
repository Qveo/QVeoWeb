package com.qveo.qveoweb.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		
		auth.inMemoryAuthentication()
		   .withUser("user").password(passwordEncoder().encode("user")).roles("USER")
           .and()
           .withUser("admin").password(passwordEncoder().encode("admin")).roles("USER","ADMIN");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {

		String[] resources = new String[] { "/resources/css/**", "/resources/js/**", "/resources/vendor/**", "/resources/img/**" };

		http
			.csrf().disable()
			.authorizeRequests()
				.antMatchers(resources).permitAll()
				.antMatchers("/","/home").permitAll()
				.antMatchers("/login*").permitAll()
				.antMatchers("/usuario/form").permitAll()
				.antMatchers("/usuario/list").hasRole("ADMIN")
				.anyRequest()
				.authenticated()
				.and()
			.formLogin()
				.loginPage("/login")
				.loginProcessingUrl("/login")
				//.permitAll()
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
	
	@Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
	

}
