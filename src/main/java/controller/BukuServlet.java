package controller;

import dao.BukuDAO;
import model.Buku;
import model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class BukuServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        User user = (session != null) ? (User) session.getAttribute("user") : null;

        BukuDAO dao = new BukuDAO();

        // ===== DELETE (ADMIN ONLY) =====
        String deleteId = request.getParameter("delete");
        if (deleteId != null) {
            if (user != null && user.getRole().equals("ADMIN")) {
                dao.delete(Integer.parseInt(deleteId));
            }
            response.sendRedirect("index.jsp?halaman=buku");
            return;
        }

        // ===== EDIT FORM (ADMIN ONLY) =====
        String editId = request.getParameter("edit");
        if (editId != null) {
            if (user != null && user.getRole().equals("ADMIN")) {
                Buku b = dao.getById(Integer.parseInt(editId));
                request.setAttribute("bukuEdit", b);
                request.getRequestDispatcher("edit_buku.jsp").forward(request, response);
                return;
            } else {
                response.sendRedirect("index.jsp?halaman=buku");
                return;
            }
        }

        // ===== TAMPILKAN DAFTAR BUKU (SEMUA USER) =====
        List<Buku> list = dao.getAll();
        request.setAttribute("listBuku", list);
        request.getRequestDispatcher("buku.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        User user = (session != null) ? (User) session.getAttribute("user") : null;

        if (user == null || !user.getRole().equals("ADMIN")) {
            response.sendRedirect("index.jsp?halaman=buku");
            return;
        }

        String idParam = request.getParameter("id");

        Buku b = new Buku();
        b.setJudul(request.getParameter("judul"));
        b.setPenulis(request.getParameter("penulis"));
        b.setHarga(Integer.parseInt(request.getParameter("harga")));
        b.setStok(Integer.parseInt(request.getParameter("stok")));
        b.setGambar(request.getParameter("gambar"));
        b.setKategoriId(Integer.parseInt(request.getParameter("kategori_id")));

        BukuDAO dao = new BukuDAO();

        if (idParam == null || idParam.isEmpty()) {
            dao.insert(b);
        } else {
            b.setId(Integer.parseInt(idParam));
            dao.update(b);
        }

        response.sendRedirect("index.jsp?halaman=buku");
    }
}
