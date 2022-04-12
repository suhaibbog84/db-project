package com.cydeo.day1;

import java.sql.SQLException;

import java.sql.*;

public class FlexibleNavigation {

    public static void main(String[] args) throws SQLException {

        String url = "jdbc:oracle:thin:@54.235.2.232:1521:XE";
        String username = "hr";
        String password = "hr";

        Connection conn = DriverManager.getConnection(url,username,password) ;
        Statement stmt = conn.createStatement();
        ResultSet rs   = stmt.executeQuery("SELECT * FROM REGIONS") ;




    }
}
