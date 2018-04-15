/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Prueba1;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.*;

/**
 *
 * @author Eduardo Soriano
 */
@WebServlet(name = "ControladorEmpleados", urlPatterns = {"/ControladorEmpleados"})
public class ControladorEmpleados extends HttpServlet {
     
    PrintWriter salida;
    private ModeloEmpleados modelo;
    @Resource(name="jdbc/con")
    private DataSource conexiones;

    @Override
    public void init() throws ServletException{
       super.init();
        try {
            modelo = new ModeloEmpleados(conexiones);
            
        } catch (Exception e) {
            throw new ServletException(e);
        }
       
    }
   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorEmpleados</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorEmpleados at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String accion = request.getParameter("instruccion");
        
        if(accion == null) accion="listar";
        //processRequest(request, response);
        switch(accion){
            case "listar":
                obtenerEmpleados(request,response);
            break;
            case "inserta":
                agregarEmpleado(request,response);
            break;
        }
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     //   processRequest(request, response);
     agregarEmpleado(request,response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void obtenerEmpleados(HttpServletRequest request, HttpServletResponse response) {
        
        //String emp="DOIT";
        try{
            List<Empleados> emp = modelo.listaEmpleados();
            request.setAttribute("Empleados", emp); 
            RequestDispatcher despacho = request.getRequestDispatcher("/empleados.jsp");
            despacho.forward(request,response);
        }catch(Exception e){
            try {
                salida = response.getWriter();
                salida.print(":c");
            } catch (IOException ex) {
                Logger.getLogger(ControladorEmpleados.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    private void agregarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String apeP = request.getParameter("ap1");
        String apeM = request.getParameter("ap2");
        int idU = 1;
        int tipo = 1;
        String st = "A";
        
        Empleados nEmp = new Empleados(name,apeP,apeM,idU,tipo,st);
        
        modelo.agregar(nEmp);
        
        obtenerEmpleados(request,response);
        
    }

}

