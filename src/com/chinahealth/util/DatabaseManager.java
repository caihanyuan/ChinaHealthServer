package com.chinahealth.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseManager {
	
	private final static String DRIVER = "com.mysql.jdbc.Driver";
	
	private final static String DB_NAME = "chinahealth";
	
	private final static String DB_URL = "jdbc:mysql://localhost:3306/" + DB_NAME;
	
	private final static String DB_USERNAME = "root";
	
	private final static String DB_PASSWORD = "123456";
	
	private static DatabaseManager instance = null;
	
	private Connection dbCon = null;
	
	public static DatabaseManager getInstance(){
		if(instance == null){
			instance = new DatabaseManager();
		}
		 return instance;
	}

	private DatabaseManager(){
		try {
			Class.forName(DRIVER);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getConnection(){
		try {
			dbCon = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dbCon;
	}
}
