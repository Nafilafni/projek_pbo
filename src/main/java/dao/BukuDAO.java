/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import util.KoneksiDB;
import model.Buku;
import java.sql.*;
import java.util.*;

public class BukuDAO {

    public List<Buku> getAll() {
        List<Buku> list = new ArrayList<>();
        try {
            Connection conn = KoneksiDB.getConnection();
            String sql = "SELECT b.*, k.nama_kategori FROM buku b JOIN kategori k ON b.kategori_id = k.id";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                Buku b = new Buku();
                b.setId(rs.getInt("id"));
                b.setJudul(rs.getString("judul"));
                b.setPenulis(rs.getString("penulis"));
                b.setHarga(rs.getInt("harga"));
                b.setStok(rs.getInt("stok"));
                b.setGambar(rs.getString("gambar"));
                b.setKategoriId(rs.getInt("kategori_id"));
                b.setNamaKategori(rs.getString("nama_kategori"));
                list.add(b);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Buku> getByKategori(int kategoriId) {
        List<Buku> list = new ArrayList<>();
        try {
            Connection conn = KoneksiDB.getConnection();
            String sql = "SELECT b.*, k.nama_kategori FROM buku b JOIN kategori k ON b.kategori_id = k.id WHERE b.kategori_id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, kategoriId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Buku b = new Buku();
                b.setId(rs.getInt("id"));
                b.setJudul(rs.getString("judul"));
                b.setPenulis(rs.getString("penulis"));
                b.setHarga(rs.getInt("harga"));
                b.setStok(rs.getInt("stok"));
                b.setGambar(rs.getString("gambar"));
                b.setKategoriId(rs.getInt("kategori_id"));
                b.setNamaKategori(rs.getString("nama_kategori"));
                list.add(b);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public void insert(Buku b) {
        try {
            Connection conn = KoneksiDB.getConnection();
            String sql = "INSERT INTO buku(judul,penulis,harga,stok,gambar,kategori_id) VALUES(?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, b.getJudul());
            ps.setString(2, b.getPenulis());
            ps.setInt(3, b.getHarga());
            ps.setInt(4, b.getStok());
            ps.setString(5, b.getGambar());
            ps.setInt(6, b.getKategoriId());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void delete(int id) {
        try {
            Connection conn = KoneksiDB.getConnection();
            String sql = "DELETE FROM buku WHERE id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Buku getById(int id) {
        Buku b = null;
        try {
            Connection conn = KoneksiDB.getConnection();
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM buku WHERE id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                b = new Buku();
                b.setId(rs.getInt("id"));
                b.setJudul(rs.getString("judul"));
                b.setPenulis(rs.getString("penulis"));
                b.setHarga(rs.getInt("harga"));
                b.setStok(rs.getInt("stok"));
                b.setGambar(rs.getString("gambar"));
                b.setKategoriId(rs.getInt("kategori_id"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return b;
    }

    public void update(Buku b) {
        try {
            Connection conn = KoneksiDB.getConnection();
            PreparedStatement ps = conn.prepareStatement(
                    "UPDATE buku SET judul=?, penulis=?, harga=?, stok=?, gambar=?, kategori_id=? WHERE id=?"
            );
            ps.setString(1, b.getJudul());
            ps.setString(2, b.getPenulis());
            ps.setInt(3, b.getHarga());
            ps.setInt(4, b.getStok());
            ps.setString(5, b.getGambar());
            ps.setInt(6, b.getKategoriId());
            ps.setInt(7, b.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
