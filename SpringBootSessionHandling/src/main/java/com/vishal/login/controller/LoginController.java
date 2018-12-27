package com.vishal.login.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.vishal.login.service.LoginService;
import com.vishal.login.vo.LoginRequestVo;
import com.vishal.login.vo.LoginResponseVo;

/**
 * @author Vishal Narang
 */

@RestController
@RequestMapping("/login")
public class LoginController {

	@Autowired
	private LoginService loginService;

	@PostMapping("/userLogin")
	public @ResponseBody LoginResponseVo userLogin(@RequestBody LoginRequestVo loginRequestVo,
			HttpServletRequest request, HttpServletResponse httpServletResponse) {

		LoginResponseVo loginResponseVo = loginService.userLogin(loginRequestVo);

		if (!loginResponseVo.isValidUserName())
			System.err.println("User name is invalid");

		if (loginResponseVo.isLoginSuccess()) {

			loginResponseVo.setSessionId(request.getSession().getId());

			List<GrantedAuthority> authorities = new ArrayList<>();

			GrantedAuthority authority = new SimpleGrantedAuthority("ROLE_ADMIN");
			authorities.add(authority);

			SecurityContextHolder.getContext().setAuthentication(
					new UsernamePasswordAuthenticationToken(loginResponseVo.getUserName(), null, authorities));
			request.getSession().setAttribute("USER", loginResponseVo.getUserName());
		} else
			System.err.println("Failed to login");

		return loginResponseVo;
	}

	@PostMapping("/logout")
	public @ResponseBody boolean logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

		if (authentication != null)
			new SecurityContextLogoutHandler().logout(request, response, authentication);

		return true;
	}
}
