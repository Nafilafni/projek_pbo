<%-- 
    Document   : transaksi
    Created on : 14 Jan 2026, 17.44.02
    Author     : nafil
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="dao.TransaksiDAO, model.Transaksi, java.util.List" %>

<%
    TransaksiDAO tdao = new TransaksiDAO();
    List<Transaksi> listTransaksi = tdao.getAll();
%>

<h3>Daftar Transaksi</h3>
<table class="table table-bordered">
  <thead class="table-light">
    <tr>
      <th>ID</th>
      <th>Nama Pembeli</th>
      <th>Total</th>
      <th>Tanggal</th>
    </tr>
  </thead>
  <tbody>
    <% for(Transaksi t : listTransaksi){ %>
      <tr>
        <td><%=t.getId()%></td>
        <td><%=t.getNamaPembeli()%></td>
        <td>Rp <%=t.getTotal()%></td>
        <td><%=t.getTanggal()%></td>
      </tr>
    <% } %>
  </tbody>
</table>
