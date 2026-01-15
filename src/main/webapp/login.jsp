<%-- 
    Document   : login
    Created on : 14 Jan 2026, 17.44.31
    Author     : nafil
--%>

<!DOCTYPE html>
<html>
<head>
<title>Login Admin</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body class="container mt-5">

<h3>Login Admin</h3>
<form action="LoginServlet" method="post">
  <input type="text" name="username" placeholder="Username" class="form-control mb-2" required>
  <input type="password" name="password" placeholder="Password" class="form-control mb-2" required>
  <button class="btn btn-primary">Login</button>
</form>

</body>
</html>
