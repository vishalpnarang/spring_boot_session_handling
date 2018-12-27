package com.vishal.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vishal.login.entities.User;
import com.vishal.login.repository.UserRepository;
import com.vishal.login.vo.LoginRequestVo;
import com.vishal.login.vo.LoginResponseVo;

/**
 * @author Vishal Narang
 */

@Service
public class LoginService {

	@Autowired
	private UserRepository userRepository;

	public LoginResponseVo userLogin(LoginRequestVo loginRequestVo) {
		LoginResponseVo loginResponseVo = null;

		User user = userRepository.findByUserName(loginRequestVo.getUserName());

		if (user == null) {
			loginResponseVo = new LoginResponseVo();
			loginResponseVo.setLoginSuccess(false);
			loginResponseVo.setValidUserName(false);
		} else if (user.getPassword().equals(loginRequestVo.getPassword())) {
			loginResponseVo = new LoginResponseVo();
			loginResponseVo.setLoginSuccess(true);
			loginResponseVo.setValidUserName(true);
			loginResponseVo.setUserName(loginRequestVo.getUserName());
		}

		return loginResponseVo;
	}

}
