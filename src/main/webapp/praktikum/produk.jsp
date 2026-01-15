<%@page import="dao.ProdukDAO"%>
<%@page import="java.util.List"%>
<%@page import="model.Produk"%>
<%@page import="java.sql.Connection"%>

<%
    try {
        Class.forName("org.postgresql.Driver");
        //out.println("<b>Driver PostgreSQL TERLOAD</b><br>");
    } catch (Exception e) {
        out.println("<b>Driver PostgreSQL TIDAK TERLOAD</b><br>");
    }

    ProdukDAO dao = new ProdukDAO();
    List<Produk> daftarProduk = dao.getAll();
%>

<h3>Data Produk</h3>

<table class="table table-striped">
    <thead>
        <tr>
            <th>No</th>
            <th>Kode</th>
            <th>Nama Produk</th>
            <th>Jenis Produk</th>
            <th>Harga Produk</th>
            <th>Stok</th>
        </tr>
    </thead>

    <tbody>
        <%
            int no = 1;
            for (Produk p : daftarProduk) {
        %>
        <tr>
            <td><%= no++%></td>
            <td><%= p.getKode()%></td>
            <td><%= p.getNama()%></td>
            <td>
                <%= (p.getJenis() != null) ? p.getJenis().getNama() : "-" %>
            </td>
            <td><%= p.getHarga()%></td>
            <td><%= p.getStok()%></td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>

</body>
</html>
