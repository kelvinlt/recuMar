<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="entities.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <%
            String username = (String) request.getAttribute("username");
            List<Task> lista = (List) request.getAttribute("lista");            
            %>
            <h2>Usuario: <%= username%></h2>
            <h2>Lista de tareas pendientes</h2>
            <th>ID</th><th>Tarea</th><th>Descripcion</th>
            <%                
                for (Task t : lista) {
                    out.println("<tr>");
                    if (t.getDone() == false) {
                        out.println("<td>" + t.getIdtask() + "</td>");
                        out.println("<td>" + t.getTitle() + "</td>");
                        out.println("<td>" + t.getContent() + "</td>");
                    }
                    out.println("</tr>");
                }
            %>
        </table>
    </body>
</html>
