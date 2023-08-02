package com.org.Quiz.service;

import java.sql.Connection;
import java.sql.DriverManager;

public class Provider {

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz_application", "root", "root");
			System.out.println("Connection successful!");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
}
