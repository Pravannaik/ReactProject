package com.par.utility;

import java.sql.DriverManager;
import java.sql.SQLException;

import java.sql.Connection;

public class DB {

	private static final String URL = "jdbc:mysql://192.168.43.142:3306/Movies";
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "";
	private static Connection connection = null;
	
	public static Connection openConnection() {
		if (connection != null) {
			return connection;
		}else{
			try{
				Class.forName(DRIVER);
				connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return connection;
		}
	}
}
