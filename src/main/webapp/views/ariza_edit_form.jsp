<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>KATS</title>
</head>
<body>
<jsp:include page="header.jsp" />

<center>
    <fieldset>
        <legend>Ariza Duzenleme Formu</legend>
        <form action="${pageContext.request.contextPath}/edit_ariza_action" method="POST" modelAttribute="ariza">

            <input type="hidden" name="id" value="${ariza.id}"/>

            Ariza Adi: <input style="margin-bottom: 2%" type="text" name="name" placeholder="Ariza Adi" value="${ariza.name}"/><br />

            Ariza Turu: <input style="margin-bottom: 2%" type="text" name="type" placeholder="Ariza Turu" value="${ariza.type}"/><br />

            Ariza Tarihi: <input style="margin-bottom: 2%" type="date" name="date" placeholder="Ariza Tarihi" value="${ariza.date}"/><br/>

            <input style="margin-bottom: 2%" type="submit" value="Kaydet" />
            <input style="margin-bottom: 2%" type="reset" value="Temizle"/>
        </form>
    </fieldset>

</center>
</body>
</html>
