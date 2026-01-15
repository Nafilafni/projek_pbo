<%-- 
    Document   : home
    Created on : 11 Dec 2025, 09.15.33
    Author     : nafil
--%>

<style>
    .about-section {
        background-color: #121212; 
        padding: 60px 0;
        color: #ffffff;
    }
    .about-card {
        background: rgba(255, 255, 255, 0.05);
        border: 1px solid rgba(255, 255, 255, 0.1);
        border-radius: 20px;
        padding: 40px;
        transition: transform 0.3s ease;
    }
    .about-card:hover {
        transform: translateY(-5px);
        background: rgba(255, 255, 255, 0.08);
    }
    .about-title {
        font-weight: 800;
        letter-spacing: -1px;
        margin-bottom: 25px;
        position: relative;
        display: inline-block;
    }
    .about-title::after {
        content: '';
        position: absolute;
        width: 50%;
        height: 4px;
        background: #3b82f6;
        bottom: -10px;
        left: 0;
        border-radius: 10px;
    }
    .tech-stack {
        background: #1e293b;
        border-radius: 12px;
        padding: 20px;
        margin-top: 30px;
        border-left: 4px solid #3b82f6;
    }
    .text-justify {
        text-align: justify;
        line-height: 1.8;
        color: #cbd5e1;
    }
</style>

<div class="about-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="about-card">
                    <h3 class="about-title">Selamat Datang di <span class="text-primary">BukuKita</span></h3>
                    
                    <div class="row mt-4">
                        <div class="col-md-7">
                            <p class="text-justify">
                                BukuKita merupakan sistem informasi toko buku berbasis web yang dirancang untuk memudahkan 
                                pengelolaan dan transaksi penjualan buku secara digital. Pengguna dapat melihat dan mencari 
                                daftar buku yang tersedia berdasarkan kategori, sedangkan admin dapat mengelola data buku, 
                                kategori, serta memantau transaksi penjualan.
                            </p>
                        </div>
                        <div class="col-md-5">
                            <div class="tech-stack">
                                <h6 class="text-white fw-bold mb-3"><i class="bi bi-cpu me-2"></i> Teknologi Utama</h6>
                                <ul class="list-unstyled mb-0 small text-light opacity-75">
                                    <li class="mb-2"><i class="bi bi-check2-circle me-2 text-primary"></i> Java Servlet & JSP</li>
                                    <li class="mb-2"><i class="bi bi-check2-circle me-2 text-primary"></i> Bootstrap 5 (UI/UX)</li>
                                    <li><i class="bi bi-check2-circle me-2 text-primary"></i> PostgreSQL Database</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <p class="text-justify mt-4">
                        Dengan sistem ini, diharapkan pengelolaan toko buku menjadi lebih efisien, terstruktur, dan mudah digunakan 
                        baik bagi pelanggan maupun pengelola toko. Kami berkomitmen memberikan pengalaman belanja buku digital yang terbaik.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>