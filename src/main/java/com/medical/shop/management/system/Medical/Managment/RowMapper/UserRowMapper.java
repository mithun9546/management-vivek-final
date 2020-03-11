package com.medical.shop.management.system.Medical.Managment.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.medical.shop.management.system.Medical.Managment.Model.Users;

public class UserRowMapper implements RowMapper<Users> {

	@Override
	public Users mapRow(ResultSet resultSet, int arg1) throws SQLException {
		Users users = new Users();
		users.setUsername(resultSet.getString(1));
		users.setPassword(resultSet.getString(2));
		users.setName(resultSet.getString(3));
		users.setEmailId(resultSet.getString(4));
		users.setContactNo(resultSet.getString(5));
		return users;
	}

}
