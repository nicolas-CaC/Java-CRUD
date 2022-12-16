package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ProductosController", 
        urlPatterns = {"/ProductosController"})
public class ProductosController extends HttpServlet {

    @Override
    protected void doGet(
            HttpServletRequest req, 
            HttpServletResponse resp) 
            throws ServletException, IOException {
    
        
    }

    @Override
    protected void doPost(
            HttpServletRequest req, 
            HttpServletResponse resp) 
            throws ServletException, IOException {
        
        
    }
}
