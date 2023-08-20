package org.example;

import java.sql.*;

/**
 * Запроз на витяг з бд якщо в колонкі є NULL
 */
public class SelectWasNull {
    public static void main(String[] args) {
        Connection conn = null;
        String url = "jdbc:mysql://localhost/cookbook";
        String userName = "root";
        String password = "Qwerty335906";

        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection(url, userName, password);
            System.out.println("Connected");

            Statement s = conn.createStatement();
            s.executeQuery("SELECT name, birth, foods FROM cookbook.profile");
            ResultSet rs = s.getResultSet();
            ResultSetMetaData md = rs.getMetaData();
            int ncols = md.getColumnCount();
            while (rs.next()) {
                for (int i = 0; i < ncols; i++) {
                    String val = rs.getString(i+1);
                    if (i > 0)
                        System.out.print(", ");
                    if (rs.wasNull())
                        System.out.print("NULL");
                    else
                        System.out.print(val);
                }
                System.out.println();
            }
            rs.close();
            s.close();
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
