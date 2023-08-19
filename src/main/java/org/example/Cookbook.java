package org.example;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Cookbook {
    public static Connection connect() throws Exception {
        String url = "jdbc:mysql://localhost/cookbook";
        String user = "root";
        String password = "Qwerty335906";
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        return (DriverManager.getConnection(url, user, password));
    }

    public static String getErrorMessage(Exception e) {
        StringBuffer s = new StringBuffer();
        if (e instanceof SQLException) {
            s.append("Error message: " + e.getMessage() + "\n");
            s.append("Error code: " + ((SQLException) e).getErrorCode() + "\n");
        } else {
            s.append(e + "\n");
        }
        return (s.toString());
    }

    public static void printErrorMessage(Exception e) {
        System.err.println(Cookbook.getErrorMessage(e));
    }
}
