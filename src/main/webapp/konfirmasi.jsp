<%-- 
    Document   : konfirmasi
    Created on : 14 Jan 2026, 21.25.35
    Author     : nafil
--%>

<%@ page import="dao.TransaksiDAO, model.Transaksi" %>
<%
    int transaksiId = Integer.parseInt(request.getParameter("transaksi_id"));
    TransaksiDAO tdao = new TransaksiDAO();
    Transaksi t = tdao.getById(transaksiId);
%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Konfirmasi Pesanan</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light">
<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-6">

      <div class="card shadow-lg border-0">
        <div class="card-header bg-success text-white text-center">
          <h4 class="mb-0">Pesanan Berhasil</h4>
        </div>

        <div class="card-body text-center">
          <p class="fs-5">
            Terima kasih, <strong><%= t.getNamaPembeli() %></strong>
          </p>

          <p class="mb-1">Pesanan kamu sedang diproses.</p>

          <hr>

          <div class="text-start">
            <p><strong>ID Transaksi:</strong> <%= t.getId() %></p>
            <p><strong>Total Pembayaran:</strong> Rp <%= t.getTotal() %></p>
            <p><strong>Tanggal:</strong> <%= t.getTanggal() %></p>
            <p><strong>Status:</strong> 
              <span class="badge bg-warning text-dark">Diproses</span>
            </p>
          </div>

          <a href="index.jsp?halaman=buku" class="btn btn-primary w-100 mt-3">
            Kembali ke Katalog
          </a>
        </div>
      </div>

    </div>
  </div>
</div>
