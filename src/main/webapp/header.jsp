<%-- 
    Document   : header
    Created on : 11 Dec 2025, 08.41.02
    Author     : nafil
--%>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<style>
    .hero-section {
        background: linear-gradient(135deg, #1a2a6c, #b21f1f, #fdbb2d);
        background-size: 400% 400%;
        animation: gradientBG 15s ease infinite;
        padding: 120px 0;
        color: white;
        position: relative;
        overflow: hidden;
    }

    @keyframes gradientBG {
        0% {
            background-position: 0% 50%;
        }
        50% {
            background-position: 100% 50%;
        }
        100% {
            background-position: 0% 50%;
        }
    }

    .hero-content {
        position: relative;
        z-index: 2;
    }

    .hero-title {
        font-family: 'Inter', sans-serif;
        font-weight: 800;
        font-size: 3.5rem;
        letter-spacing: -2px;
        text-shadow: 0 10px 20px rgba(0,0,0,0.2);
    }

    .hero-subtitle {
        font-size: 1.2rem;
        color: rgba(255, 255, 255, 0.9);
        max-width: 600px;
        margin: 20px auto;
        line-height: 1.6;
    }

    .btn-custom {
        padding: 15px 40px;
        font-weight: 700;
        border-radius: 50px;
        text-transform: uppercase;
        letter-spacing: 1px;
        transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
        background: white;
        color: #1a2a6c !important;
        border: none;
        box-shadow: 0 10px 20px rgba(0,0,0,0.1);
    }

    .btn-custom:hover {
        transform: scale(1.1);
        box-shadow: 0 15px 30px rgba(0,0,0,0.2);
        background: #f8f9fa;
    }

    .circle-deco {
        position: absolute;
        border-radius: 50%;
        background: rgba(255, 255, 255, 0.1);
        z-index: 1;
    }
</style>

<div class="hero-section text-center">
    <div class="circle-deco" style="width: 300px; height: 300px; top: -100px; left: -50px;"></div>
    <div class="circle-deco" style="width: 200px; height: 200px; bottom: -50px; right: -20px;"></div>

    <div class="container hero-content">
        <h1 class="hero-title animate__animated animate__fadeInDown">
            Baca Lebih <span class="text-warning">Seru.</span>
        </h1>
        <p class="hero-subtitle animate__animated animate__fadeInUp">
            Temukan koleksi kurasi buku terbaik dunia. Dari <span class="fw-bold">Novel</span> yang mendebarkan hingga <span class="fw-bold">Teknologi</span> masa depan, semua ada di BukuKita.
        </p>
        <div class="mt-5">
            <a href="index.jsp?halaman=buku" class="btn btn-custom btn-lg">
                Mulai Jelajah <i class="bi bi-rocket-takeoff ms-2"></i>
            </a>
        </div>
    </div>
</div>