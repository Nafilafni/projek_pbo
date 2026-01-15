<%-- 
    Document   : tambah_buku
    Created on : 14 Jan 2026, 21.31.19
    Author     : nafil
--%>

<%@page import="model.User"%>
<%@ page import="dao.KategoriDAO, model.Kategori, java.util.*" %>
<%
    User user = (User) session.getAttribute("user");
    if(user == null || !user.getRole().equals("ADMIN")){
        response.sendRedirect("index.jsp?halaman=buku");
        return;
    }

    KategoriDAO kdao = new KategoriDAO();
    List<Kategori> listKategori = kdao.getAll();
%>

<h3>Tambah Buku</h3>
<form action="BukuServlet" method="post">
    <input type="text" name="judul" placeholder="Judul" class="form-control mb-2" required>
    <input type="text" name="penulis" placeholder="Penulis" class="form-control mb-2">
    <input type="number" name="harga" placeholder="Harga" class="form-control mb-2" required>
    <input type="number" name="stok" placeholder="Stok" class="form-control mb-2" required>
    <input type="text" name="gambar" placeholder="Nama file gambar" class="form-control mb-2">
    <select name="kategori_id" class="form-control mb-2">
        <% for(Kategori k: listKategori){ %>
            <option value="<%=k.getId()%>"><%= k.getNamaKategori() %></option>
        <% } %>
    </select>
    <button class="btn btn-primary">Simpan</button>
</form>

