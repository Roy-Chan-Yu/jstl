package com.pouchen.roy.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionBeanProvider {

	private static Connection connection =null;
	
	private ConnectionBeanProvider() {
		
	}
	
	static {
		try {
			Class.forName(LoginProvider.DRIVER);
			connection = DriverManager.getConnection(LoginProvider.CONN_URL, LoginProvider.USERNAME, LoginProvider.PASSWORD);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getCon() {
		return connection;
	}
	
}
