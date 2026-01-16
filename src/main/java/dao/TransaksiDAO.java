/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

/**
 *
 * @author nafil
 */

import util.KoneksiDB;
import model.Transaksi;
import java.sql.*;
import java.util.*;

public class TransaksiDAO {

    public Transaksi getById(int id){
        Transaksi t = null;
        try{
            Connection conn = KoneksiDB.getConnection();
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM transaksi WHERE id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                t = new Transaksi();
                t.setId(rs.getInt("id"));
                t.setNamaPembeli(rs.getString("nama_pembeli"));
                t.setTotal(rs.getInt("total"));
                t.setTanggal(rs.getTimestamp("tanggal"));
            }
        } catch(Exception e){ e.printStackTrace(); }
        return t;
    }

    public List<Transaksi> getAll(){
        List<Transaksi> list = new ArrayList<>();
        try{
            Connection conn = KoneksiDB.getConnection();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM transaksi ORDER BY tanggal DESC");
            while(rs.next()){
                Transaksi t = new Transaksi();
                t.setId(rs.getInt("id"));
                t.setNamaPembeli(rs.getString("nama_pembeli"));
                t.setTotal(rs.getInt("total"));
                t.setTanggal(rs.getTimestamp("tanggal"));
                list.add(t);
            }
        } catch(Exception e){ e.printStackTrace(); }
        return list;
    }
}
