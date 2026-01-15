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

<nav class="navbar navbar-expand-lg navbar-dark sticky-top" style="background-color: #1a1a1a; border-bottom: 2px solid #3b82f6; padding: 18px 0; margin-bottom: 0;">
    <div class="container">
        <a class="navbar-brand fw-bold me-5" href="index.jsp?halaman=home" style="letter-spacing: -1px; font-size: 1.4rem;">
            <i class="bi bi-book-half text-primary me-2"></i>BukuKita
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto">
                <li class="nav-item mx-2"><a class="nav-link fw-semibold" href="index.jsp?halaman=home">Home</a></li>
                <li class="nav-item mx-2"><a class="nav-link fw-semibold" href="index.jsp?halaman=buku">Daftar Buku</a></li>
                <li class="nav-item mx-2"><a class="nav-link fw-semibold" href="index.jsp?halaman=about">About Us</a></li>
                <li class="nav-item mx-2"><a class="nav-link fw-semibold" href="index.jsp?halaman=gallery">Gallery Us</a></li>

                <li class="nav-item dropdown mx-2">
                    <a class="nav-link dropdown-toggle fw-semibold" href="#" data-bs-toggle="dropdown">Kategori</a>
                    <ul class="dropdown-menu shadow border-0 mt-3" style="background: #262626; padding: 10px;">
                        <% for (Kategori k : listKategori) {%>
                        <li><a class="dropdown-item text-light py-2" href="index.jsp?halaman=buku&kategori=<%=k.getId()%>"><%=k.getNamaKategori()%></a></li>
                            <% } %>
                    </ul>
                </li>

                <% if (isAdmin) { %>
                <li class="nav-item mx-2"><a class="nav-link text-warning fw-bold" href="index.jsp?halaman=tambah_buku"><i class="bi bi-plus-circle me-1"></i>Tambah</a></li>
                <li class="nav-item mx-2"><a class="nav-link text-warning fw-bold" href="index.jsp?halaman=transaksi"><i class="bi bi-list-check me-1"></i>Transaksi</a></li>
                    <% } %>
            </ul>

            <ul class="navbar-nav ms-auto">
                <% if (user != null) { %>
                <li class="nav-item">
                    <a class="nav-link btn btn-primary btn-sm px-4 text-white fw-bold" href="LogoutServlet" style="border-radius: 8px; padding-top: 8px; padding-bottom: 8px;">
                        <i class="bi bi-box-arrow-right me-2"></i>Logout
                    </a>
                </li>
                <% } else { %>
                <li class="nav-item">
                    <a class="nav-link btn btn-primary btn-sm px-4 text-white fw-bold" href="login.jsp" style="border-radius: 8px; padding-top: 8px; padding-bottom: 8px;">
                        <i class="bi bi-person-circle me-2"></i>Login Admin
                    </a>
                </li>
                <% }%>
            </ul>
        </div>
    </div>
</nav>