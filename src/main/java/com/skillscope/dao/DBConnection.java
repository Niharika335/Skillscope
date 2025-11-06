package com.skillscope.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/event_db";  
    private static final String USER = "root";
    private static final String PASSWORD = "Niha_2005*";

    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("✅ Database connected successfully!");
        } catch (Exception e) {
            System.out.println("❌ Database Connection Failed");
            e.printStackTrace();
        }
        return conn;
    }
}

