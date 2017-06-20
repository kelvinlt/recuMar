<%@page import="java.util.List"%>
<%@page import="entities.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%            
        List<Usuario> lista = (List) request.getAttribute("lista");          
    %>
        <h1>Listado Usuario!</h1>
       
    <%        
        for (Usuario usuarioActual : lista) {
            out.println("<form action=\"borrarUsuario\" method=\"GET\">");
            out.println("<div>Username: " + usuarioActual.getUsername() + "|| Nombre:  "+usuarioActual.getName()+"|| Edad:  "+usuarioActual.getAge()+"</div>");
            out.println("<input type=\"hidden\" name=\"username\" value="+usuarioActual.getUsername()+">");
            out.println("<input type=\"submit\" value=\"BORRAR\">");
            out.println("<br>");
            out.println("</form>");
            }          
        %>
    </body>
</html>
