package com.vishal.login.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;

/**
 * @author Vishal Narang
*/

@EnableWebSecurity
@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.NEVER);
		// login api can be hit by anyone so we are permitting all the users to hit any
		// api related to login
		http.cors().and().csrf().disable().authorizeRequests().antMatchers("/login/**").permitAll()
				// allows every user to access unsecured api's
				.antMatchers("/unsecured/**").permitAll()
				// restricts only admin to access api's with /secured/ path
				.antMatchers("/secure/**").hasAnyRole("ADMIN")
				.and().logout().logoutUrl("/logout");
		http.headers().frameOptions().disable();
	}

}
