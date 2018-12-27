package com.vishal.login;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.UserDetailsServiceAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.session.jdbc.config.annotation.web.http.EnableJdbcHttpSession;
import org.springframework.session.web.http.HeaderHttpSessionIdResolver;
import org.springframework.session.web.http.HttpSessionIdResolver;

/**
 * @author Vishal Narang
 */

@SpringBootApplication(exclude = { UserDetailsServiceAutoConfiguration.class })
@EnableJdbcHttpSession(tableName = "spring_session", maxInactiveIntervalInSeconds = 1800)
@Configuration
public class SpringBootSessionHandlingApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootSessionHandlingApplication.class, args);
	}

	// Http session handling
	@Bean
	public HttpSessionIdResolver httpSessionIdResolver() {
		return HeaderHttpSessionIdResolver.xAuthToken();
	}
}
