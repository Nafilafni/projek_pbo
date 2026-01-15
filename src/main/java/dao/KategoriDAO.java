/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import util.KoneksiDB;
import model.Kategori;
import java.sql.*;
import java.util.*;

public class KategoriDAO {

    public List<Kategori> getAll() {
        List<Kategori> list = new ArrayList<>();
        try {
            Connection c = KoneksiDB.getConnection();
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM kategori");

            while (rs.next()) {
                Kategori k = new Kategori();
                k.setId(rs.getInt("id"));
                k.setNamaKategori(rs.getString("nama_kategori"));
                list.add(k);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}


