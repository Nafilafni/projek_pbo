<%-- 
    Document   : edit_buku
    Created on : 14 Jan 2026, 20.38.35
    Author     : nafil
--%>

<%@ page import="model.Buku, dao.KategoriDAO, model.Kategori, java.util.List" %>
<%
    Buku b = (Buku) request.getAttribute("bukuEdit");
    KategoriDAO kdao = new KategoriDAO();
    List<Kategori> kategoriList = kdao.getAll();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Edit Buku</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light">

        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-8">

                    <div class="card shadow">
                        <div class="card-header bg-warning text-dark">
                            <h4 class="mb-0">Edit Buku</h4>
                        </div>

                        <div class="card-body">
                            <form action="BukuServlet" method="post">

                                <input type="hidden" name="id" value="<%=b.getId()%>">

                                <div class="mb-3">
                                    <label class="form-label">Judul Buku</label>
                                    <input type="text" name="judul" class="form-control"
                                           value="<%=b.getJudul()%>" required>
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Penulis</label>
                                    <input type="text" name="penulis" class="form-control"
                                           value="<%=b.getPenulis()%>" required>
                                </div>

                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <label class="form-label">Harga</label>
                                        <input type="number" name="harga" class="form-control"
                                               value="<%=b.getHarga()%>" required>
                                    </div>

                                    <div class="col-md-6 mb-3">
                                        <label class="form-label">Stok</label>
                                        <input type="number" name="stok" class="form-control"
                                               value="<%=b.getStok()%>" required>
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Nama File Gambar</label>
                                    <input type="text" name="gambar" class="form-control"
                                           value="<%=b.getGambar()%>">
                                    <small class="text-muted">Contoh: naruto.png</small>
                                </div>

                                <select name="kategori_id" class="form-select" required>
                                    <% for (Kategori k : kategoriList) {%>
                                    <option value="<%=k.getId()%>"
                                            <%= (k.getId() == b.getKategoriId()) ? "selected" : ""%>>
                                        <%= k.getNamaKategori()%>
                                    </option>
                                    <% }%>
                                </select>


                                <div class="d-flex justify-content-between">
                                    <a href="index.jsp?halaman=buku" class="btn btn-secondary">
                                        Batal
                                    </a>
                                    <button type="submit" class="btn btn-warning">
                                        Update Buku
                                    </button>
                                </div>

                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <script src="js/bootstrap.bundle.min.js"></script>
    </body>
</html>
