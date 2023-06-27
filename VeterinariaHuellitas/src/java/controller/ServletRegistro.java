/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utils.ConexionDB;

/**
 *
 * @author b
 */
@WebServlet(name = "ServletRegistro", urlPatterns = {"/ServletRegistro"})
public class ServletRegistro extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String opcion = request.getParameter("opcion");

        if (opcion.equals("registroUsuario")) {
            String usuario = request.getParameter("txtnombre");
            String dni = request.getParameter("txtDNI");
//            String genero = request.getParameter("txtGenero");
//            String fecha_nacimiento = request.getParameter("txtFecha");
            String direccion = request.getParameter("txtDireccion");
            String telefono = request.getParameter("txtTel");
            String correo = request.getParameter("txtCorreo");
            String contraseña = request.getParameter("txtPass");
 
            try {
                PreparedStatement psta = ConexionDB.getConexion().
                        prepareStatement("Insert into usuario values(?,?,?,?,?,?,?,?,?)");
                psta.setString(1, usuario);
                psta.setString(2, dni);
                psta.setString(3, "mujer");
                psta.setString(4, "0000-00-00");
                psta.setString(5, direccion);
                psta.setString(6, telefono);
                psta.setString(7, correo);
                psta.setString(8, contraseña);
                psta.setString(9, "usuario");
                psta.executeUpdate();
                
                
                
                request.setAttribute("msg", "Datos ingresados");
                request.getRequestDispatcher("registro.jsp").forward(request, response);
                
            } catch (Exception e) {
                request.setAttribute("msg", "error");
            }

       }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
        processRequest(request, response);
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

}
