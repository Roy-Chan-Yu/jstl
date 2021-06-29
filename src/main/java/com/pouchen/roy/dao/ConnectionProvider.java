package com.pouchen.roy.dao;

import java.sql.Connection;
import java.sql.DriverManager;

import com.pouchen.roy.dao.Provider.*;

public class ConnectionProvider {

	private static Connection connection = null;
	
	static {
		try {
			Class.forName(Provider.DRIVER);
			connection= DriverManager.getConnection(Provider.CONN_URL, Provider.USERNAME, Provider.PASSWORD);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection() {
		return connection;
	}
	
	public static void main(String[] args) {
		ConnectionProvider c = new ConnectionProvider();
		c.getConnection();
	}
	
}
