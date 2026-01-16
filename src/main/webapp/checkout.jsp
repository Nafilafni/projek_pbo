<%-- 
    Document   : checkout
    Created on : 14 Jan 2026, 21.25.07
    Author     : nafil
--%>

<%@ page import="dao.BukuDAO, model.Buku" %>
<%
    int bukuId = Integer.parseInt(request.getParameter("buku_id"));
    Buku b = new BukuDAO().getById(bukuId);
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
                    <div class="card mx-auto" style="max-width: 600px;">
                        <div class="card-header bg-primary text-white">
                            Checkout: <%=b.getJudul()%>
                        </div>
                        <div class="card-body">
                            <p>Harga: Rp <%=b.getHarga()%></p>
                            <p>Stok: <%=b.getStok()%></p>

                            <form action="ProsesTransaksiServlet" method="post">
                                <input type="hidden" name="buku_id" value="<%=b.getId()%>">

                                <div class="mb-2">
                                    <label>Nama:</label>
                                    <input type="text" name="nama_pembeli" class="form-control" required>
                                </div>

                                <div class="mb-2">
                                    <label>Jumlah:</label>
                                    <input type="number" name="jumlah" value="1" min="1" class="form-control" required>
                                </div>

                                <div class="mb-2">
                                    <label>Alamat:</label>
                                    <input type="text" name="alamat" class="form-control" required>
                                </div>

                                <button class="btn btn-success w-100">Pesan Sekarang</button>
                                <a href="index.jsp?halaman=buku" class="btn btn-primary w-100 mt-3">
                                    Kembali ke Katalog
                                </a>
                            </form>
                        </div>
                    </div>
