<%-- 
    Document   : about
    Created on : 11 Dec 2025, 09.34.49
    Author     : nafil
--%>

<style>

    .dev-section {
        padding: 80px 0;
        background-color: #0f172a;
        min-height: 600px;

        .dev-card {
            background: #1e293b;
            border-radius: 20px;
            border: 1px solid rgba(255,255,255,0.1);
            padding: 50px;
            margin-bottom: 50px;
        }


        .carousel-control-prev-icon,
        .carousel-control-next-icon {
            background-color: #3b82f6;
            border-radius: 50%;
            padding: 20px;
            background-size: 50%;
        }

        .carousel-control-prev, .carousel-control-next {
            width: 10%;
        }
    </style>

    <div class="dev-section">
        <div class="container">
            <div class="text-center mb-5">
                <h3 class="fw-bold text-white display-6">Meet Our <span class="text-primary">Team</span></h3>
                <p class="text-secondary">Geser untuk melihat profil ke-5 pengembang</p>
            </div>

            <div id="devCarousel" class="carousel slide" data-bs-ride="false">
                <div class="carousel-inner">

                    <div class="carousel-item active">
                        <div class="row justify-content-center">
                            <div class="col-md-8">
                                <div class="dev-card text-center">
                                    <div class="mb-4 mx-auto" style="width: 150px;
                                        height: 150px;
                                        border-radius: 50%;
                                        padding: 5px;
                                        background: linear-gradient(45deg, #3b82f6, #a855f7);">
                                        <img src="images/pilah.jpeg" class="w-100 h-100 rounded-circle" style="object-fit: cover;" onerror="this.src='https://ui-avatars.com/api/?name=Nafil+1&background=0D8ABC&color=fff'">
                                    </div>
                                    <h4 class="text-white fw-bold">Nafila Afni Alqibtiyah</h4>
                                    <p class="text-primary fw-bold small uppercase">TEKNIK INFORMATIKA</p>
                                    <p class="text-secondary opacity-75">"NIM: 0110224107 - Penanggung jawab Backend & Database."</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <div class="row justify-content-center">
                            <div class="col-md-8">
                                <div class="dev-card text-center">
                                    <div class="mb-4 mx-auto" style="width: 150px;
                                        height: 150px;
                                        border-radius: 50%;
                                        padding: 5px;
                                        background: linear-gradient(45deg, #3b82f6, #a855f7);">
                                        <img src="images/angga.jpeg" class="w-100 h-100 rounded-circle" style="object-fit: cover;" onerror="this.src='https://ui-avatars.com/api/?name=Nafil+2&background=a855f7&color=fff'">
                                    </div>
                                    <h4 class="text-white fw-bold">angga kurniansyah</h4>
                                    <p class="text-primary fw-bold small uppercase">TEKNIK INFORMATIKA</p>
                                    <p class="text-secondary opacity-75">"NIM: 0110224056 - Spesialis UI/UX Design."</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <div class="row justify-content-center">
                            <div class="col-md-8">
                                <div class="dev-card text-center">
                                    <div class="mb-4 mx-auto" style="width: 150px;
                                        height: 150px;
                                        border-radius: 50%;
                                        padding: 5px;
                                        background: linear-gradient(45deg, #3b82f6, #a855f7);">
                                        <img src="images/padil.jpeg" class="w-100 h-100 rounded-circle" style="object-fit: cover;" onerror="this.src='https://ui-avatars.com/api/?name=Nafil+2&background=a855f7&color=fff'">
                                    </div>
                                    <h4 class="text-white fw-bold">Fadhil Muhammad Zain </h4>
                                    <p class="text-primary fw-bold small uppercase">TEKNIK INFORMATIKA</p>
                                    <p class="text-secondary opacity-75">"NIM: 0110224148 - ketua kelompok."</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <div class="row justify-content-center">
                            <div class="col-md-8">
                                <div class="dev-card text-center">
                                    <div class="mb-4 mx-auto" style="width: 150px;
                                        height: 150px;
                                        border-radius: 50%;
                                        padding: 5px;
                                        background: linear-gradient(45deg, #3b82f6, #a855f7);">
                                        <img src="images/gilang.jpeg" class="w-100 h-100 rounded-circle" style="object-fit: cover;" onerror="this.src='https://ui-avatars.com/api/?name=Nafil+2&background=a855f7&color=fff'">
                                    </div>
                                    <h4 class="text-white fw-bold">Gilang Ramadan</h4>
                                    <p class="text-primary fw-bold small uppercase">TEKNIK INFORMATIKA</p>
                                    <p class="text-secondary opacity-75">"NIM: 0110224175 - pengerjaan laporan."</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <div class="row justify-content-center">
                            <div class="col-md-8">
                                <div class="dev-card text-center">
                                    <div class="mb-4 mx-auto" style="width: 150px;
                                        height: 150px;
                                        border-radius: 50%;
                                        padding: 5px;
                                        background: linear-gradient(45deg, #3b82f6, #a855f7);">
                                        <img src="images/anis.jpeg" class="w-100 h-100 rounded-circle" style="object-fit: cover;" onerror="this.src='https://ui-avatars.com/api/?name=Nafil+2&background=a855f7&color=fff'">
                                    </div>
                                    <h4 class="text-white fw-bold">Anis Adriyani </h4>
                                    <p class="text-primary fw-bold small uppercase">TEKNIK INFORMATIKA</p>
                                    <p class="text-secondary opacity-75">"NIM: 0110224013 - Penanggung jawab ERD Database."</p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <button class="carousel-control-prev" type="button" data-bs-target="#devCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#devCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                </button>
            </div>
        </div>
    </div>


