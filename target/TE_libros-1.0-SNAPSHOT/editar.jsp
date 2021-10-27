<%@page import="com.emergentes.modelo.Libro"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    Libro lib = (Libro) request.getAttribute("lib");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <c:if test="${lib.id==0}">
                NUEVO LIBRO
            </c:if>
            <c:if test="${lib.id!=0}">
                EDITAR LIBRO
            </c:if>
        </h1>
        <form action="MainController" method="post">
            <table>
                <input type="hidden" name="id" value="${lib.id}">
                <tr>
                    <td>ISBN: </td>
                    <td><input type="text" name="isbn" value="${lib.isbn}"></td>
                </tr>
                <tr>
                    <td>TITULO: </td>
                    <td><input type="text" name="titulo" value="${lib.titulo}"></td>
                </tr>
                <tr>
                    <td>CATEGORIA: </td>
                    <td><input type="text" name="categoria" value="${lib.categoria}"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
