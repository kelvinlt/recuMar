<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Usuario</title>
    </head>
    <%
        String username = (String) request.getAttribute("username");
    %>
    <body>
        <h1>Bienvenido usuario <b><%= username%></b></h1>
        <br/>
        <div>
            <form action="pendientes" method="get">
                <input type="hidden" name="username" value="<%=username%>"/>
                <input type='submit' name='submit' value='Tareas Pendientes'/>
            </form>
                <br/>
            <form action="finalizadas" method="get">
                <input type="hidden" name="username" value="<%=username%>"/>
                <input type='submit' name='submit' value='Tareas Acabadas'/>
            </form>
                <br/>
            <form action="borrar" method="get">
                <input type="hidden" name="username" value="<%=username%>"/>
                <input type='submit' name='submit' value='Borrar Tareas'/>
            </form>
        </div>
    </body>
</html>
