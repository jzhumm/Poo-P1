<%-- 
    Document   : disciplinas
    Created on : 3 de out. de 2020, 13:45:36
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
        <%
        if(request.getParameter("enviar")!=null){
            int novaNota= Integer.parseInt(request.getParameter("nota"));
            int indice= Integer.parseInt(request.getParameter("indice"));
            Disciplina disciplina=Disciplina.getList().get(indice);
            disciplina.setNota(novaNota);
        }
        %>
            
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h2>Minhas disciplinas</h2>
        <table border="1">
            <tr>
                <th>disciplinas</th>
                <th>ementa</th>
                <th>ciclo</th>
                <th>nota</th>
            </tr>
            <%
                for(int i=0; i<Disciplina.getList().size();i++){
                    Disciplina disciplina=(Disciplina) Disciplina.getList().get(i);%>
                    <tr>
                        <td><%=disciplina.getNome()%></td>
                        <td><%=disciplina.getEmenta()%></td>
                        <td><%=disciplina.getCiclo()%></td>
                        <td>
                    <form method="get">
                        <input type="number" name="nota" value="<%=disciplina.getNota()%>"/>
                        <input type="submit" name="enviar" value="Enviar"/>
                        <input type="hidden" name="indice" value="<%=i%>"/>
                    </form>
                        </td>
                    </tr>
                    
                <%}%>
                
        </table>
    </body>
</html>
