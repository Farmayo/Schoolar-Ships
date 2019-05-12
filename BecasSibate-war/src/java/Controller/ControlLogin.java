/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.UserDAO;
import DTO.UserDTO;
import DataControl.Data;
import Interfaces.Contract;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hermanos-Jimenez
 */
public class ControlLogin extends HttpServlet {

    @EJB
    private Contract userDAO;
    
    private HttpServletResponse res;
    private Data control;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            res = response;            
            
            userDAO = new UserDAO();            
            control = Data.getInstance();
            
            String user = request.getParameter("username");
            String password = request.getParameter("password");
            
            try{
                UserDTO userDTO = (UserDTO) userDAO.read(user);
                
                if (userDTO != null) {
                    if(userDTO.getPassword().equals(password)) {
                        response.sendRedirect("MainPage.jsp");
                    } else {
                        control.setTryPassword(true);
                        redirecLogin();
                    }
                } else {
                    control.setTryUser(true);
                    redirecLogin();
                }
                
            }catch(Exception e) {
                System.out.println(e.getMessage());
                control.setTryUser(true);
                redirecLogin();
            }            
        }
    }
    
    protected void redirecLogin() {
        try {
            res.sendRedirect("Login.jsp");
        } catch (IOException ex) {
            Logger.getLogger(ControlLogin.class.getName()).log(Level.SEVERE, null, ex);
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
