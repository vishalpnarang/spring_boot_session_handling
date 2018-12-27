package com.vishal.login.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Vishal Narang
 */

@RestController
@RequestMapping("/secure")
public class SecureController {

	@GetMapping("/hello")
	public String secureHello() {
		return "Hello Secured";
	}
}
