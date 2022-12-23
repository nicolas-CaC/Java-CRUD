<%@page import="models.ProductosDao"%>
<%@page import="models.Productos"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
    </head>
    <body>
        
        <div class="container">
            <div class="row">
                <a class="btn btn-primary col-4 m-4" href="ProductosController?accion=nuevo">Agregar Producto</a>
                
                <table>
                    
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Marca</th>
                            <th>Stock</th>
                            <th>Categoria</th>
                            <th>Modificar</th>
                            <th>Eliminar</th>
                        </tr>
                    </thead>
                    
                    <tbody>            
                        <%
                        List<Productos> resultado = null;    
                        ProductosDao producto = new ProductosDao();
                        resultado = producto.listarProductos();
                        
                        for(int i = 0; i < resultado.size(); i++){
                            String ruta = "ProductosController?accion=modificar&id=" + resultado.get(i).getId();
                            String rutaE = "ProductosController?accion=eliminar&id=" + resultado.get(i).getId();
                        %>
                        <tr>
                            <td><%= resultado.get(i).getId()%></td>
                            <td><%= resultado.get(i).getNombre()%></td>
                            <td><%= resultado.get(i).getMarca()%></td>
                            <td><%= resultado.get(i).getStock()%></td>
                            <td><%= resultado.get(i).getCategoria()%></td>
                            
                            <td><a class="text-success" href=<%=ruta%>>X</a></td>
                            <td><a class="text-danger" href=<%=rutaE%>>X</a></td>
                        </tr>                              
                    </tbody>
                    
                    <%
                        }
                    %>
                    
                    <tfoot>
                        <tr>
                            <td>Cantidad de productos:</td>
                            <td><%= resultado.size() %></td>
                        </tr>
                    </tfoot>
                </table>
                
            </div>
            
        </div>
        
    </body>
</html>
