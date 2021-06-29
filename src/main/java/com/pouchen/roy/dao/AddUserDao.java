package com.pouchen.roy.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.bcel.verifier.exc.StaticCodeInstructionOperandConstraintException;

import com.pouchen.roy.bean.AddUser;
import com.pouchen.roy.bean.User;

public class AddUserDao {

	private static Connection connection = null;
	
	public static Connection getConn() {
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mariadb://localhost:3310/hib", "root", "root");
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return connection;
	}
	
	public static int save(AddUser au) {
		int status=0;
		try {
			connection = getConn();
			PreparedStatement ps = connection.prepareStatement(
		"insert into register(name,password,email,sex,country) values(?,?,?,?,?)");
			ps.setString(1, au.getName());
			ps.setString(2,au.getPassword());
			ps.setString(3, au.getEmail());
			ps.setString(4, au.getSex());
			ps.setString(5, au.getCountry());
			status = ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return status;
	}
	
	public static int update(AddUser au) {
		int status=0;
		try {
			connection = getConn();
			PreparedStatement ps = connection.prepareStatement(
		"update register set name=?, password=?, email=?, sex=?, country=? where id=?");
			ps.setString(1, au.getName());
			ps.setString(2, au.getPassword());
			ps.setString(3, au.getEmail());
			ps.setString(4, au.getSex());
			ps.setString(5, au.getCountry());
			ps.setInt(6, au.getId());
			status = ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static int delete(AddUser u) {
		int status = 0;
		try {
			connection = getConn();
			PreparedStatement ps = connection.prepareStatement(
			"delete from register where id = ?");
			ps.setInt(1, u.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return status;
	}
	
	public static List<AddUser> getAllRecords() {
		List<AddUser> list = new ArrayList<AddUser>();
		
		try {
			connection = getConn();
			PreparedStatement ps = connection.prepareStatement("select * from register");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				AddUser user = new AddUser();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setPassword(rs.getString("password"));
				user.setEmail(rs.getString("email"));
				user.setSex(rs.getString("sex"));
				user.setCountry(rs.getString("country"));
				list.add(user);
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static AddUser getRecordById(int id) {
		AddUser user = null;
		try {
			connection = getConn();
			PreparedStatement ps = connection.prepareStatement("select * from register where id = ?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				user = new AddUser();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setPassword(rs.getString("password"));
				user.setEmail(rs.getString("email"));
				user.setSex(rs.getString("sex"));
				user.setCountry(rs.getString("country"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return user;
	}
	
}
