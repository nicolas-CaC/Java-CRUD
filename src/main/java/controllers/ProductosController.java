package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Productos;
import models.ProductosDao;

@WebServlet(name = "ProductosController", 
        urlPatterns = {"/ProductosController"})
public class ProductosController extends HttpServlet {

    @Override
    protected void doGet(
            HttpServletRequest req, 
            HttpServletResponse resp) 
            throws ServletException, IOException {
    
        ProductosDao productosDao = new ProductosDao();
        String accion = req.getParameter("accion");
        
        RequestDispatcher dispatcher;
        
//        Métodos usados desde el GET
        
        if(accion == null || accion.isEmpty()){
            dispatcher = req.getRequestDispatcher("Vistas/productos.jsp");
        }
        
        else if(accion.equals("modificar")){
            dispatcher = req.getRequestDispatcher("Vistas/modificar.jsp");
        }
        
        else if (accion.equals("nuevo")){
            dispatcher = req.getRequestDispatcher("Vistas/nuevo.jsp");
        }
        
        // Métodos traídos del POST
        
        else if(accion.equals("insert")){
            String nombre = req.getParameter("nombre");
            String marca = req.getParameter("marca");
            int stock = Integer.parseInt(req.getParameter("stock"));
            String categoria = req.getParameter("categoria");
            
            Productos producto = new Productos(0, stock, nombre, marca, categoria);
            productosDao.agregarProductos(producto);
            
            dispatcher = req.getRequestDispatcher("Vistas/productos.jsp");
        }
        
        else if(accion.equals("actualizar")){
            int id = Integer.parseInt(req.getParameter("id"));
            String nombre = req.getParameter("nombre");
            String marca = req.getParameter("marca");
            int stock = Integer.parseInt(req.getParameter("stock"));
            String categoria = req.getParameter("categoria");
            
            Productos producto = new Productos(id, stock, nombre, marca, categoria);
            productosDao.actualizarProducto(producto);

            dispatcher = req.getRequestDispatcher("Vistas/productos.jsp");            
        }
        
        else if(accion.equals("eliminar")){
            int id = Integer.parseInt(req.getParameter("id"));
            productosDao.borrarProducto(id);
            
            dispatcher = req.getRequestDispatcher("Vistas/productos.jsp");
        }
        
        else {
            dispatcher = req.getRequestDispatcher("Vistas/productos.jsp");
        }
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req,HttpServletResponse resp) 
            throws ServletException, IOException {
        doGet(req,resp);
    }
    
    @Override
    public String getServletInfo() {return super.getServletInfo();}
}
