<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <title>KATS</title>
</head>
<body>
<jsp:include page="header.jsp" />
<center>
    <fieldset>
        <legend>Oturum Ac</legend>
        <form action="${pageContext.request.contextPath}/login_action" method="POST">

            <div style="margin-bottom: 2%">
                <input type="text" name="username" placeholder="Kullanici Adi" autocomplete="off"/><br/>
            </div>

            <div style="margin-bottom: 2%">
                <input type="password" name="password" placeholder="Sifre"/><br/>
            </div>


            <input type="submit" value="Oturum Ac"/>
        </form>
    </fieldset>

</center>

</body>
</html>
