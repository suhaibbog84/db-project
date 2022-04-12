package com.cydeo.day1;

import java.sql.*;

public class TestOracleConnection {

    public static void main(String[] args) throws SQLException {

        // Step 1: create a connection by providing connection information
        //this connection jdbc url , also known as connection string
        //syntax look like this
        //            jdbc:DataBaseType:subprotocal:@Host:port:SID
        String url = "jdbc:oracle:thin:@54.235.2.232:1521:XE";
        String username = "hr";
        String password = "hr";

        //no JDBC provide utility class called DriverManager with many methods
        // the getConnection method accept 3 parameters url, username, password
        // according to this information ,
        // it will first look for the driver of the database type you are connecting to
        // it once it's found , use the rest of connection information like
        // host ip , username password , port , sid to make connection
        // MAKE SURE YOUR CONNECTION WORK MANUALLY ,
        // ANYTHING DOES NOT WORK MANUALLY WILL NOT WORK AUTOMATION

        Connection conn = DriverManager.getConnection(url, username, password);
        System.out.println("Successfully Connected");


    }
}
