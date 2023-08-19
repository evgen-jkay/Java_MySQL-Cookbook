package org.example;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Підключення до БД
 */
public class Main {
    public static void main(String[] args) {
        Connection conn = null;
        String url = "jdbc:mysql://localhost/cookbook";
        String userName = "root";
        String password = "Qwerty335906";

        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection(url, userName, password);
            System.out.println("Connected");
        } catch (Exception e) {
            System.out.println("Cannot connect to server");
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    System.out.println("Disconnected");
                } catch (Exception e) { }
            }
        }
    }
}