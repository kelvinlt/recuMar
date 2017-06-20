<%@page import="java.util.List"%>
<%@page import="entities.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administracion</title>
    </head>
    <body>
        <form action="rankingUsuarios" method="GET"><input type='submit' name='Ranking Usuario' value='rankingUsuarios'/></form>
        <form action="borrarUsuariosLista" method="GET"><input type='submit' name='Borrar Usuario' value='borrarUsuarios'/></form>
        <%            
            List<Usuario> lista = (List) request.getAttribute("lista");            
        %>
        <h1>Pagina de administracion</h1>
        <%            
        for (Usuario usuarioActual : lista) {
            out.println("<div>Username: " + usuarioActual.getUsername() + "|| Nombre:  "+usuarioActual.getName()+"|| Edad:  "+usuarioActual.getAge()+"</div>");
            out.println("<br>");
            }
        %>
        
    </body>
</html>
