<%

    String session_username = (String)session.getAttribute("username");
%>
<div>
    <div style="float: left">
        <% if(session_username != null) { %>
        <a href="${pageContext.request.contextPath}/add_ariza">Ariza Bildir</a> |
        <a href="${pageContext.request.contextPath}/dashboard">Ariza Listele</a>
        <% } %>
    </div>

    <div style="float: right;">
        <% if(session_username == null) { %>
        <a href="${pageContext.request.contextPath}/login">Oturum Ac</a>
        <% } %>

        <% if(session_username != null) { %>
        Hosgeldin <%= session.getAttribute("username") %> |
        <a href="${pageContext.request.contextPath}/logout">Oturumu Kapat</a>
        <% } %>

    </div>
</div>
<br />
<div>
    <center>
        <h1 style="background-color: darkcyan; color: white;">Kurum Ariza Takip Sistemi</h1>
    </center>
</div>




