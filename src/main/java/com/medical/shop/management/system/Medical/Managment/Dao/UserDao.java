package com.medical.shop.management.system.Medical.Managment.Dao;

import org.springframework.stereotype.Component;

import com.medical.shop.management.system.Medical.Managment.Model.Users;

@Component
public interface UserDao {

	public boolean addUser(Users users);

	public boolean userExist(String username);

	public Users checkUser(String username, String password);

	public Users getUserByEmailId(String email_id);

	public Users getUserByContact(String contact_number);
}
