package com.cydeo.day2;

import java.sql.*;

public class Library2DBTest {

    public static void main(String[] args) throws SQLException {


        String url = "jdbc:mysql://34.230.35.214:3306/library2";
        String username = "library2_client";
        String password = "6s2LQQTjBcGFfDhY";

        Connection conn = DriverManager.getConnection(url, username, password);
        Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = stmt.executeQuery("SELECT * FROM books");

        while (rs.next()) {
            System.out.println("rs.getString(\"name\") = "
                    + rs.getString("name"));

        }
    }
}
