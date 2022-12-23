<%-- 
    Document   : nuevo
    Created on : 1 dic 2022, 20:13:45
    Author     : Diseno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar producto</title>
    </head>
    <body>
        
        <div class="container">
            <h1 class="text-center">Agregar Producto</h1>
            
            <form class="p-5" action="ProductosController?accion=insert" method="POST">
                
                <div class="mb-3">
                <label for="nombre">Nombre</label>
                <input type="text" class="form-control" id="nombre" name="nombre">
                </div>

                <div class="mb-3">
                <label for="marca">Marca</label>
                <input type="text" class="form-control" id="marca" name="marca">
                </div>
                
                <div class="mb-3">
                <label for="nombre">Stock</label>
                <input type="text" class="form-control" id="stock" name="stock">
                </div>
                
                <div class="mb-3">
                <label for="nombre">Categoria</label>
                <input type="text" class="form-control" id="categoria" name="categoria">
                </div>
            
                <button type="submit" class="btn btn-primary">Agregar</button>
            </form>
            
            
        </div>
    </body>
</html>
