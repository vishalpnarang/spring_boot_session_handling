package com.vishal.login.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vishal.login.entities.User;

/**
 * @author Vishal Narang
 */

public interface UserRepository extends JpaRepository<User, Integer> {

	public User findByUserName(String userName);
}
