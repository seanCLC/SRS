package com.srs.service;

import com.srs.daomain.vo.Student;

public interface LoginService {
	/**
	 * 学生登陆
	 * @param ssn
	 * @param password
	 * @return
	 */
	Student studentLogin(String ssn, String password);
}
