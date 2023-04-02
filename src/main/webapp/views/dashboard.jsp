<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="jstlc" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>KATS</title>
</head>
<body>
<jsp:include page="header.jsp" />


<center>
    <h3>Ariza Listesi</h3>
    <table border="1" cellspacing="5" cellpadding="10">
        <thead>
        <th>Ariza No</th>
        <th>Kurum Adi</th>
        <th>Ariza Tipi</th>
        <th>Tarih</th>
        <th>Action</th>
        </thead>
        <jstlc:forEach var="ariza" items="${ariza_list}">
            <tr>
                <td>${ariza.id}</td>
                <td>${ariza.name}</td>
                <td>${ariza.type}</td>
                <td>${ariza.date}</td>
                <td>
                    <a href="edit?id=${ariza.id}">Duzenle</a> |
                    <a href="delete?id=${ariza.id}"
                       onclick="javascript: return confirm('Silmek istediginizden emin misiniz?');">Sil</a>
                </td>
            </tr>
        </jstlc:forEach>
    </table>
</center>

</body>
</html>
