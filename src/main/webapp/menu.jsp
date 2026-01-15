<%-- 
    Document   : menu
    Created on : 11 Dec 2025, 08.41.15
    Author     : nafil
--%>

<%@ page import="model.User, dao.KategoriDAO, model.Kategori, java.util.*" %>
<%
    User user = (User) session.getAttribute("user");
    boolean isAdmin = (user != null && user.getRole().equals("ADMIN"));

    KategoriDAO kdao = new KategoriDAO();
    List<Kategori> listKategori = kdao.getAll();
%>

<nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp?halaman=home">BukuKita</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav me-auto">
        <li class="nav-item"><a class="nav-link" href="index.jsp?halaman=home">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="index.jsp?halaman=buku">Daftar Buku</a></li>
        <li class="nav-item"><a class="nav-link" href="index.jsp?halaman=about">About Us</a></li>
        <li class="nav-item"><a class="nav-link" href="index.jsp?halaman=gallery">Gallery Us</a></li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Kategori</a>
          <ul class="dropdown-menu">
            <% for(Kategori k : listKategori){ %>
              <li><a class="dropdown-item" href="index.jsp?halaman=buku&kategori=<%=k.getId()%>"><%=k.getNamaKategori()%></a></li>
            <% } %>
          </ul>
        </li>

        <% if(isAdmin){ %>
          <li class="nav-item"><a class="nav-link" href="index.jsp?halaman=tambah_buku">Tambah Buku</a></li>
          <li class="nav-item"><a class="nav-link" href="index.jsp?halaman=transaksi">Lihat Transaksi</a></li>
        <% } %>
      </ul>

      <ul class="navbar-nav">
        <% if(user != null){ %>
          <li class="nav-item"><a class="nav-link" href="LogoutServlet">Logout</a></li>
        <% } else { %>
          <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
        <% } %>
      </ul>
    </div>
  </div>
</nav>
