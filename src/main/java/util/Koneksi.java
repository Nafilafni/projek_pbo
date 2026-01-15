/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Koneksi {

    public static Connection getConnection() {
        try {
            String url = "jdbc:postgresql://localhost:5432/dbtoko";
            String user = "postgres";
            String pass = "pilah565";

            return DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
            e.printStackTrace(); // WAJIB
            System.out.println("Koneksi gagal: " + e.getMessage());
            return null;
        }
    }
    public static void main(String[] args) throws SQLException {
        if (KoneksiDB.getConnection() != null) {
            System.out.println("Koneksi berhasil");
        }
    } 
}



