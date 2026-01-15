<%-- 
    Document   : index
    Created on : 11 Dec 2025
    Author     : nafil
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String halaman = request.getParameter("halaman");
    if (halaman == null) halaman = "home";
    request.setAttribute("halaman", halaman);
%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BukuKita</title>
    <link href="cssprojek/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container-fluid">
<!-- MENU -->
    <jsp:include page="menu.jsp" />
    <!-- HEADER -->
    <%@ include file="header.jsp" %>

    

    <!-- KONTEN DINAMIS -->
    <div class="mt-4">
        <jsp:include page="${halaman}.jsp" />
    </div>

    <!-- FOOTER -->
    <%@ include file="footer.jsp" %>

</div>

<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>
