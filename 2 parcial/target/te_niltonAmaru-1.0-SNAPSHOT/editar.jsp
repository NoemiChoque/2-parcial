<%@page import="com.emergentes.modelo.Registro"%>
<%
    Registro item = (Registro) request.getAttribute("miRegistro");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Segundo Parcial</title>
    </head>
    <body>
        <h1><%=(item.getId() == 0) ? "Nuevo Registro" : "Editar Registro"%></h1>
        <form action="MainController" method="POST">

            <input type="hidden" name="id" value="<%=item.getId()%>"/>

            <table>
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="Nombre" value="<%=item.getDescripcion()%>"/></td>
                </tr>
                <tr>
                    <td>Apellido</td>
                    <td><input type="text" name="Apellido" value="<%=item.getCantidad()%>"/></td>
                </tr>
                <tr>
                    <td>Confirmacion</td>
                    <td><input type="text" name="Confirmacion" value="<%=item.getPrecio()%>"/></td>
                </tr>
                <tr>
                    <td>Seminario</td>
                    <td><select name="Seminario" value="<%=item.getCategoria()%>">
                            <option>Criptografia</option>
                            <option>Hacking web</option>
                            <option>Esganografia</option>
                        </select></td>
                </tr>

                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>



    </body>
</html>
