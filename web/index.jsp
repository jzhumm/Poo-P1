<%-- 
    Document   : index
    Created on : 3 de out. de 2020, 13:37:07
    Author     : Jorge Tati
--%>

<%@page import="br.sp.fatec.poo.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h3>Jorge A Rossetti Lapa</h3>
        <h3>matricula 27878783753</h3>
        <h3>Diciplinas:<%=Disciplina.getList().size()%></h3>
        
    </body>
</html>
