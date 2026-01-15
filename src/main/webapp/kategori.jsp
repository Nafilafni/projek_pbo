<%-- 
    Document   : kategori
    Created on : 14 Jan 2026, 17.43.29
    Author     : nafil
--%>
<%@ page import="dao.KategoriDAO, model.Kategori, java.util.*, model.User" %>
<%
    User user = (User) session.getAttribute("user");
    if(user == null || !user.getRole().equals("ADMIN")){
%>
<p>Login sebagai admin untuk mengelola kategori.</p>
<% } else {
    KategoriDAO dao = new KategoriDAO();
    List<Kategori> list = dao.getAll();
%>
<h3>Data Kategori</h3>
<table class="table table-striped">
<tr><th>ID</th><th>Nama Kategori</th></tr>
<% for(Kategori k: list){ %>
<tr>
  <td><%= k.getId() %></td>
  <td><%= k.getNamaKategori() %></td>
</tr>
<% } %>
</table>
<% } %>




