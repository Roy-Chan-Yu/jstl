package com.pouchen.roy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.pouchen.roy.bean.LoginBean;

public class LoginDao {

	public static boolean validate(LoginBean bean) {
		boolean status = false;
		
		try {
			Connection connection = ConnectionProvider.getConnection();
			PreparedStatement ps = connection.prepareStatement(
					"select * from user where email=? and password=? ");
			ps.setString(1, bean.getEmail());
			ps.setString(2, bean.getPassword());
			status = ps.executeQuery().next();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return status;
	}
}
