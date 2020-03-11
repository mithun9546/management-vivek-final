package com.medical.shop.management.system.Medical.Managment.Dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.medical.shop.management.system.Medical.Managment.Model.Users;
import com.medical.shop.management.system.Medical.Managment.RowMapper.UserRowMapper;

@Component("userDaoImpl")
public class UserDaoImpl implements UserDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public boolean addUser(Users users) {
		String sql = "insert into users values(?,?,?,?,?,?)";
		String sql1 = "insert into authorities values(?,?)";
		try {
			jdbcTemplate.update(sql, users.getUsername(), "{noop}" + users.getPassword(), users.getName(),
					users.getEmailId(), users.getContactNo(), 1);
			jdbcTemplate.update(sql1, users.getUsername(), "USER");
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean userExist(String username) {
		String sql = "select * from users where username = ?";
		UserRowMapper userRowMapper = new UserRowMapper();
		try {
			jdbcTemplate.queryForObject(sql, userRowMapper, username);
		} catch (EmptyResultDataAccessException e) {
			return false;
		}
		return true;
	}

	@Override
	public Users checkUser(String username, String password) {
		String sql = "select * from users where username = ? AND password = ?";
		UserRowMapper userRowMapper = new UserRowMapper();
		Users users = new Users();
		try {
			users = jdbcTemplate.queryForObject(sql, userRowMapper, username, password);
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
		return users;
	}

	@Override
	public Users getUserByEmailId(String emailID) {
		// TODO Auto-generated method stub
		Users users = new Users();
		String sql = "select * from users where emailId = ?";
		try {
			users = jdbcTemplate.queryForObject(sql, new UserRowMapper(), emailID);
			System.out.println(users);
		} catch (Exception e) {
			System.out.println(e);
			users = null;
		}
		return users;
	}

	@Override
	public Users getUserByContact(String contactNo) {
		String sql = "select * from users where contactNo = ?";
		Users users = new Users();
		try {
			users = jdbcTemplate.queryForObject(sql, new UserRowMapper(), contactNo);
			// user=(User)jdbcTemplate.queryForObject(sql, new Object[]
			// {contact_number},new BeanPropertyRowMapper(User.class));
			System.out.println(users);
		} catch (Exception e) {
			System.out.println(e);
			users = null;
		}
		return users;
	}

}
