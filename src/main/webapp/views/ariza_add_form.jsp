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
    <legend>Ariza Ekleme Formu</legend>
    <form action="${pageContext.request.contextPath}/add_ariza_action" method="POST" modelAttribute="ariza">

      <input style="margin-bottom: 2%" type="text" name="name" placeholder="Ariza Adi" autocomplete="off" /><br />
      <input style="margin-bottom: 2%" type="text" name="type" placeholder="Ariza Turu" /><br />
      <input style="margin-bottom: 2%" type="date" name="date" placeholder="Ariza Tarihi"/><br/>
      <input style="margin-bottom: 2%"type="submit" value="Kaydet" />
      <input style="margin-bottom: 2%" type="reset" value="Temizle"/>
    </form>
  </fieldset>

</center>
</body>
</html>
