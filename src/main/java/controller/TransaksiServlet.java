/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.TransaksiDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.DetailTransaksi;
import model.Transaksi;
import util.KoneksiDB;

/**
 *
 * @author nafil
 */
public class TransaksiServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        String namaPembeli = request.getParameter("nama_pembeli");
        int bukuId = Integer.parseInt(request.getParameter("buku_id"));
        int jumlah = Integer.parseInt(request.getParameter("jumlah"));

        try {
            Connection conn = KoneksiDB.getConnection();

            // Ambil harga buku
            PreparedStatement psB = conn.prepareStatement("SELECT harga FROM buku WHERE id=?");
            psB.setInt(1, bukuId);
            ResultSet rs = psB.executeQuery();
            int harga = 0;
            if(rs.next()){
                harga = rs.getInt("harga");
            }

            // Insert ke transaksi
            PreparedStatement psT = conn.prepareStatement(
                "INSERT INTO transaksi(nama_pembeli, total) VALUES(?,?)",
                Statement.RETURN_GENERATED_KEYS
            );
            psT.setString(1, namaPembeli);
            psT.setInt(2, harga * jumlah);
            psT.executeUpdate();
            ResultSet rsT = psT.getGeneratedKeys();
            int transaksiId = 0;
            if(rsT.next()){
                transaksiId = rsT.getInt(1);
            }

            // Insert ke detail_transaksi
            PreparedStatement psD = conn.prepareStatement(
                "INSERT INTO detail_transaksi(transaksi_id, buku_id, jumlah, harga) VALUES(?,?,?,?)"
            );
            psD.setInt(1, transaksiId);
            psD.setInt(2, bukuId);
            psD.setInt(3, jumlah);
            psD.setInt(4, harga);
            psD.executeUpdate();

            response.sendRedirect("index.jsp?halaman=buku");

        } catch(Exception e){
            e.printStackTrace();
        }
    }
}