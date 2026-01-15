<%-- 
    Document   : latihan_form
    Created on : 4 Dec 2025, 09.36.24
    Author     : nafil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Input Nilai Mahasiswa</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f5f5;
            padding: 20px;
            margin: 0;
            color: #333;
        }
        .container {
            max-width: 500px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        h2 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 20px;
            border-bottom: 2px solid #3498db;
            padding-bottom: 10px;
        }
        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
            color: #2980b9;
        }
        input[type="text"],
        input[type="number"],
        select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
            box-sizing: border-box;
        }
        input[type="radio"] {
            margin-right: 5px;
        }
        .radio-group {
            margin-top: 5px;
            display: flex;
            gap: 20px;
        }
        button {
            background-color: #3498db;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
            width: 100%;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #2980b9;
        }
        .field {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Form Input Nilai Mahasiswa</h2>
        <form action="hasil_inputan_form.jsp" method="post">
            <div class="field">
                <label for="nim">NIM :</label>
                <input type="text" id="nim" name="nim" required />
            </div>

            <div class="field">
                <label for="nama">Nama :</label>
                <input type="text" id="nama" name="nama" required />
            </div>

            <div class="field">
                <label>Prodi :</label>
                <div class="radio-group">
                    <input type="radio" id="informatika" name="prodi" value="Informatika" checked>
                    <label for="informatika">Teknik Informatika</label>

                    <input type="radio" id="sistem_informasi" name="prodi" value="Sistem Informasi">
                    <label for="sistem_informasi">Sistem Informasi</label>
                </div>
            </div>

            <div class="field">
                <label for="matkul">Mata Kuliah :</label>
                <select id="matkul" name="matkul" required>
                    <option value="Pemrograman Web">Pemrograman Web</option>
                    <option value="Basis Data">Basis Data</option>
                    <option value="PBO">PBO</option>
                </select>
            </div>

            <div class="field">
                <label for="nilai">Nilai :</label>
                <input type="number" id="nilai" name="nilai" min="0" max="100" required />
            </div>

            <button type="submit">Simpan</button>
        </form>
    </div>
</body>
</html>
