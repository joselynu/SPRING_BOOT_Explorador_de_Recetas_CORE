<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalle de Recetas</title>
<link rel="stylesheet" href="/css/detalleReceta.css">
</head>
<body>
    <h1>Detalle de la Receta</h1>

    <c:choose>
        <c:when test="${not empty mensaje}">
            <p>${mensaje}</p>
        </c:when>

        <c:otherwise>
            <h2>${nombreReceta}</h2>

            <h3>Ingredientes:</h3>
            <ul class ="listareceta">
                <c:forEach var="ing" items="${ingredientes}">
                    <li>${ing}</li>
                </c:forEach>
            </ul>
        </c:otherwise>
    </c:choose>

</body>
</html>

