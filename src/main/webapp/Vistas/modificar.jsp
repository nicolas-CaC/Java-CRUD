<%-- 
    Document   : modificar
    Created on : 1 dic 2022, 20:13:10
    Author     : Diseno
--%>

<%@page import="models.Productos"%>
<%@page import="models.ProductosDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar producto</title>
    </head>
    <body>
        <%
        int refId = Integer.parseInt(request.getParameter("id"));
        Productos resultado = null;
        ProductosDao producto = new ProductosDao();
        resultado = producto.mostrarProducto(refId);
        %>
        <div class="row">
            <form class="p-5" action="ProductosController?accion=actualizar" method="POST">
             
                <div class="mb-3">
                    <input type="hidden" class="form-control" id="id" name="id" value=<%=resultado.getId()%>>
                </div>
             
                <div class="mb-3">
                    <label for="nombre">Nombre</label>
                    <input type="text" class="form-control" id="nombre" name="nombre" value=<%=resultado.getNombre()%>>
                </div>

                <div class="mb-3">
                    <label for="marca">Marca</label>
                    <input type="text" class="form-control" id="marca" name="marca" value=<%=resultado.getMarca()%>>
                </div>
                
                <div class="mb-3">
                    <label for="nombre">Stock</label>
                    <input type="text" class="form-control" id="stock" name="stock" value=<%=resultado.getStock()%>>
                </div>
                
                <div class="mb-3">
                    <label for="nombre">Categoria</label>
                    <input type="text" class="form-control" id="categoria" name="categoria" value=<%=resultado.getCategoria()%>>
                </div>
            
                <button type="submit" class="btn btn-primary">Modificar</button>
            </form>
        </div>
    </body>
</html>
