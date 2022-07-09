<%-- 
    Document   : admin-navbar
    Created on : 9 Jul 2022, 7:25:58 pm
    Author     : Asyraf
--%>

<ul class="navbar-nav me-auto mb-2 mb-lg-0">
    <% if (userSession != null) { %>
    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="account.jsp">Dashboard</a>
    </li>
    <%  }
        if (userSession == null) {%>
    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
    </li>
    <%  }%>
    <% if (userSession == null) {%>
    <li class="nav-item">
        <a class="nav-link" href="login.jsp">Login</a>
    </li>
    <%  }%>
    <li class="nav-item">
        <a class="nav-link" href="admin-add-car.jsp">Add Car</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="admin-view-car.jsp">View Cars</a>
    </li>
</ul>
<% if (userSession != null) {%>
<ul class="navbar-nav">
    <li class="nav-item">
        <a class="nav-link" href="logout.jsp">Logout</a>
    </li>
</ul>
<%  }%>