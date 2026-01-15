/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import java.sql.*;

public class KoneksiDB {
    private static Connection conn;

    public static Connection getConnection() throws SQLException {
        if(conn == null || conn.isClosed()){
            try {
                Class.forName("org.postgresql.Driver");
                conn = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/toko_buku",
                    "postgres",
                    "pilah565"  // ganti sesuai password PostgreSQL kamu
                );
            } catch(ClassNotFoundException e){
                e.printStackTrace();
            }
        }
        return conn;
    }
}
