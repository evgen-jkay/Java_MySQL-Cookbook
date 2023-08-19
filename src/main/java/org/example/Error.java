package org.example;

import java.sql.*;

/**
 * Контроль помилок
 */
public class Error {
    public static void main(String[] args) {
        Connection conn = null;
        String url = "jdbc:mysql://localhost/cookbook";
        String userName = "root";
        String password = "Qwerty335906";

        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection(url, userName, password);
            System.out.println("Connected");
            tryQuery(conn);
        } catch (Exception e) {
            System.err.println("Cannot connect to server");
            System.err.println(e);
            if (e instanceof SQLException) {
                System.err.println("SQLException: " + e.getMessage());
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("VendorCode: " + ((SQLException) e).getErrorCode());
            }

        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    System.out.println("Disconnected");
                } catch (SQLException e) {
                    System.err.println("SQLException: " + e.getMessage());
                    System.err.println("SQLState: " + e.getSQLState());
                    System.err.println("VendorCode: " + e.getErrorCode());
                }
            }
        }
    }

    public static void tryQuery(Connection conn) {
        Statement s = null;

        try {
            s = conn.createStatement();
            s.execute("USE cookbook");
            s.close();

            SQLWarning w = conn.getWarnings();
            while (w != null) {
                System.err.println("SQLWarning: " + w.getMessage());
                System.err.println("SQLState: " + w.getSQLState());
                System.err.println("VendorCode: " + w.getErrorCode());
                w = w.getNextWarning();
            }
        } catch (SQLException e) {
            System.err.println("SQLException: " + e.getMessage());
            System.err.println("SQLState: " + e.getSQLState());
            System.err.println("VendorCode: " + e.getErrorCode());
        }
    }
}
