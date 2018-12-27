package com.vishal.login.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Vishal Narang
 */

@RestController
@RequestMapping("/unsecure")
public class UnsecureController {

	@GetMapping("/hello")
	public String unsecureHello() {
		return "Hello Unsecure";
	}
}
