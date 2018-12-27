package com.vishal.login.vo;

/**
 * @author Vishal Narang
 */

public class LoginResponseVo {

	private String userName;
	private String sessionId;
	private boolean isLoginSuccess;
	private boolean isValidUserName;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getSessionId() {
		return sessionId;
	}

	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}

	public boolean isLoginSuccess() {
		return isLoginSuccess;
	}

	public void setLoginSuccess(boolean isLoginSuccess) {
		this.isLoginSuccess = isLoginSuccess;
	}

	public boolean isValidUserName() {
		return isValidUserName;
	}

	public void setValidUserName(boolean isValidUserName) {
		this.isValidUserName = isValidUserName;
	}
}
