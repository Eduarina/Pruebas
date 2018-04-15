package com.Prueba1;

import java.util.*;
import javax.sql.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Eduardo Soriano
 */
public class ModeloEmpleados {
    private DataSource origen;
    private Connection Con = null;
    private Statement query = null;
    private PreparedStatement que = null;
    private ResultSet resultado = null;
    private String sql;

    public ModeloEmpleados(DataSource origen) {
        this.origen = origen;
    }
    
    public List<Empleados> listaEmpleados() throws Exception{
    
        List <Empleados> emp = new ArrayList<>();
        try{
            Con = origen.getConnection();
            sql = "SELECT * FROM empleados";
            query = Con.createStatement();
            resultado = query.executeQuery(sql);
            
            while(resultado.next()){
                int id = resultado.getInt("idEmpleados");
                String name = resultado.getString("Nombre");
                String apeP = resultado.getString("ApePat");
                String apeM = resultado.getString("ApeMat");
                int idU = resultado.getInt("idUsuario");
                int tipo = resultado.getInt("tipoEmpleado");
                String st = resultado.getString("Status");
                
                Empleados temporal = new Empleados(id,name,apeP,apeM,idU,tipo,st);
                
                emp.add(temporal);
                
            }
            
        }catch(SQLException e){
            
        }
        
        return emp;
    
    }

    void agregar(Empleados nEmp) {
        try {
            Con =  origen.getConnection();
        
        
        sql = "INSERT INTO empleados (Nombre,ApePat,ApeMat,idUsuario,tipoEmpleado,Status) VALUES "
                + "(?,?,?,?,?,?)";
        que = Con.prepareStatement(sql);
        
        que.setString(1, nEmp.getNombre());
        que.setString(2, nEmp.getApePat());
        que.setString(3, nEmp.getApeMat());
        que.setInt(4, nEmp.getIdUser());
        que.setInt(5, nEmp.getTipo());
        que.setString(6, nEmp.getSt());
        
        que.execute();
        
        } catch (Exception ex) {
        }
    }
    
}
