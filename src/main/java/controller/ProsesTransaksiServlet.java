/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import util.KoneksiDB;

/**
 *
 * @author nafil
 */
public class ProsesTransaksiServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int bukuId = Integer.parseInt(request.getParameter("buku_id"));
        String nama = request.getParameter("nama_pembeli");
        String alamat = request.getParameter("alamat");
        int jumlah = Integer.parseInt(request.getParameter("jumlah"));

        try (Connection conn = KoneksiDB.getConnection()) {

            // Ambil harga buku
            PreparedStatement psB = (PreparedStatement) conn.prepareStatement("SELECT harga, stok FROM buku WHERE id=?");
            psB.setInt(1, bukuId);
            ResultSet rs = psB.executeQuery();
            int harga = 0;
            int stok = 0;
            if (rs.next()) {
                harga = rs.getInt("harga");
                stok = rs.getInt("stok");
            }

            if (jumlah > stok) {
                response.sendRedirect("checkout.jsp?buku_id=" + bukuId + "&error=stok");
                return;
            }

            // Insert ke tabel transaksi
            PreparedStatement psT = (PreparedStatement) conn.prepareStatement(
                    "INSERT INTO transaksi(nama_pembeli, total) VALUES(?, ?)",
                    Statement.RETURN_GENERATED_KEYS
            );
            psT.setString(1, nama);
            psT.setInt(2, harga * jumlah);
            psT.executeUpdate();

            ResultSet rsT = psT.getGeneratedKeys();
            int transaksiId = 0;
            if (rsT.next()) {
                transaksiId = rsT.getInt(1);
            }

            // Insert ke tabel detail_transaksi
            PreparedStatement psD = (PreparedStatement) conn.prepareStatement(
                    "INSERT INTO detail_transaksi(transaksi_id, buku_id, jumlah, harga) VALUES(?,?,?,?)"
            );
            psD.setInt(1, transaksiId);
            psD.setInt(2, bukuId);
            psD.setInt(3, jumlah);
            psD.setInt(4, harga);
            psD.executeUpdate();

            // Update stok buku
            PreparedStatement psU = (PreparedStatement) conn.prepareStatement(
                    "UPDATE buku SET stok = stok - ? WHERE id = ?"
            );
            psU.setInt(1, jumlah);
            psU.setInt(2, bukuId);
            psU.executeUpdate();

            // Redirect ke konfirmasi
            response.sendRedirect("konfirmasi.jsp?transaksi_id=" + transaksiId);

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("checkout.jsp?buku_id=" + bukuId + "&error=fail");
        }
    }
}
