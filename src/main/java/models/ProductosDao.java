package models;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductosDao {

    Conexion conexion;
    Connection connect;
    
    public ProductosDao(){
        conexion = new Conexion();
        connect = conexion.getConnection();
    }
    
    public List<Productos> listarProductos(){
        
        PreparedStatement ps;
        ResultSet rs;
        List<Productos> productos = new ArrayList<>();
        
        try{
            ps = connect.prepareStatement("SELECT * FROM productos");
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                int id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                String marca = rs.getString("marca");
                int stock = rs.getInt("stock");
                String categoria = rs.getString("categoria");
                
                Productos producto = new Productos(id,stock,nombre,marca,categoria);
                productos.add(producto);
            }
            return productos;
        }
        catch(SQLException e){
            System.out.println(e.toString());
            return null;
        }
        
        
//        public Productos mostrarProducto(int refId){
//    
//        }
//        
//        public boolean agregarProductos(Productos producto){
//            
//        }
//        
//        public boolean actualizarProducto(Productos producto){
//            
//        }
//        
//        public boolean borrarProducto(int refId){
//            
//        }
}
