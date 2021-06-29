package com.pouchen.roy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.pouchen.roy.bean.User;

public class RegisterDaoImpl {

	public static int register(User u) {
		int status =0;
		try {
			Connection connection = ConnectionProvider.getConnection();
			PreparedStatement ps = connection.prepareStatement("insert into user values(?,?,?) ");
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println("Logging fail...");
		}
		
		return status;
	}
	
}
