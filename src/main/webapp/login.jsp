<%-- 
    Document   : login
    Created on : 14 Jan 2026, 17.44.31
    Author     : nafil
--%>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Admin | BukuKita</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

    <style>
        body {
            background-color: #0f172a;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh; /* Memastikan ke tengah secara vertikal */
            font-family: sans-serif;
        }

        .login-box {
            background: #1e293b;
            padding: 40px;
            border-radius: 12px;
            width: 100%;
            max-width: 400px;
            border: 1px solid #334155;
            box-shadow: 0 10px 25px rgba(0,0,0,0.3);
        }

        .login-box h3 {
            color: #f8fafc;
            text-align: center;
            margin-bottom: 30px;
            font-weight: bold;
        }

        .form-label {
            color: #94a3b8;
        }

        .form-control {
            background-color: #0f172a;
            border: 1px solid #334155;
            color: white !important;
        }

        .form-control:focus {
            background-color: #0f172a;
            border-color: #3b82f6;
            box-shadow: none;
        }

        .btn-primary {
            background-color: #3b82f6;
            border: none;
            padding: 10px;
            width: 100%;
            font-weight: bold;
            margin-top: 10px;
        }

        .btn-primary:hover {
            background-color: #2563eb;
        }

        .back-btn {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #64748b;
            text-decoration: none;
            font-size: 14px;
        }
    </style>
</head>
<body>

<div class="login-box">
    <h3>Login Admin</h3>
    
    <form action="LoginServlet" method="post">
        <div class="mb-3">
            <label class="form-label">Username</label>
            <input type="text" name="username" class="form-control" placeholder="admin" required>
        </div>
        <div class="mb-4">
            <label class="form-label">Password</label>
            <input type="password" name="password" class="form-control" placeholder="??????" required>
        </div>
        <button type="submit" class="btn btn-primary">MASUK</button>
    </form>

    <a href="index.jsp" class="btn btn-outline-secondary w-100 mt-3" style="border-color: #334155; color: #94a3b8;">
    <i class="bi bi-arrow-left me-2"></i> Kembali ke Toko
</a>
</div>

</body>
</html>
