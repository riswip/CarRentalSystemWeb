<%-- 
    Document   : navbar
    Created on : 8 Jul 2022, 4:07:24 pm
    Author     : Asyraf
--%>

<ul class="navbar-nav me-auto mb-2 mb-lg-0">
    <% if (userSession != null) { %>
    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="account.jsp">Home</a>
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
        <a class="nav-link" href="carrentanddetails.jsp">Car Details</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="payment.jsp">Payment</a>
    </li>
</ul>
<% if (userSession != null) {%>
<ul class="navbar-nav">
    <li class="nav-item">
        <a class="nav-link" href="logout.jsp">Logout</a>
    </li>
</ul>
<%  }%>