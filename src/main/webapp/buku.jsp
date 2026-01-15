<%-- 
    Document   : buku
    Created on : 14 Jan 2026, 12.50.41
    Author     : nafil
--%>

<%@ page import="dao.BukuDAO, model.Buku, model.User, java.util.List" %>

<%
    String kategoriParam = request.getParameter("kategori");
    BukuDAO dao = new BukuDAO();
    List<Buku> list;

    if(kategoriParam != null){
        int kategoriId = Integer.parseInt(kategoriParam);
        list = dao.getByKategori(kategoriId);
    } else {
        list = dao.getAll();
    }

    User user = (User) session.getAttribute("user");
    boolean isAdmin = (user != null && "ADMIN".equals(user.getRole()));
%>

<h3 class="mb-4">Daftar Buku</h3>

<div class="row g-4"> <!-- g-4 = JARAK -->
<% for(Buku b : list){ %>

  <div class="col-md-3">
    <div class="card h-100 shadow-sm book-card">

      <!-- GAMBAR -->
      <img src="images/<%=b.getGambar()%>" 
           class="card-img-top book-img"
           alt="<%=b.getJudul()%>">

      <!-- ISI -->
      <div class="card-body d-flex flex-column">
        <h5 class="card-title"><%=b.getJudul()%></h5>
        <p class="card-text mb-1">Penulis: <%=b.getPenulis()%></p>
        <p class="card-text fw-bold text-primary">
            Rp <%=b.getHarga()%>
        </p>

        <% if(!isAdmin){ %>
            <a href="checkout.jsp?buku_id=<%=b.getId()%>" 
               class="btn btn-success mt-auto w-100">
               Checkout
            </a>
        <% } else { %>
            <a href="BukuServlet?edit=<%=b.getId()%>" 
               class="btn btn-warning w-100 mb-2">
               Edit
            </a>
            <a href="BukuServlet?delete=<%=b.getId()%>" 
               class="btn btn-danger w-100"
               onclick="return confirm('Yakin ingin hapus buku ini?')">
               Hapus
            </a>
        <% } %>
      </div>

    </div>
  </div>

<% } %>
</div>
