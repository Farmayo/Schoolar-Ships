/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.RequestDAO;
import DAO.UserDAO;
import DTO.RequestDTO;
import DTO.UserDTO;
import DataControl.Data;
import DataControl.ManageData;
import Interfaces.Contract;
import Interfaces.IRequest;
import Interfaces.IUser;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
    private IRequest requestDAO;

    @EJB
    private IUser userDAO;    
    
    private HttpServletResponse res;
    private Data control;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            res = response;        
            userDAO = new UserDAO(); 
            requestDAO = new RequestDAO();
            
            doPost(request, response);
                       
        }
    }
    
    protected void redirectLogin() {
        try {
            res.sendRedirect("Login.jsp");
        } catch (IOException ex) {
            Logger.getLogger(ControlLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        control = Data.getInstance();
        String user = request.getParameter("user");
        String password = request.getParameter("password");
        
        String message = "";

        try {
            UserDTO userDTO = (UserDTO) userDAO.read(user);

            if (userDTO != null) {
                if (userDTO.getPassword().equals(password)) {
                    control.setActiveUser(userDTO);
                    if(userDTO.getRol().equalsIgnoreCase("student")) {
                        message = "MainPage.jsp";
                    } else {
                        
                        ManageData manage = ManageData.getInstance();
                        manage.setUsers(userDAO.readAll());
                        requestDAO.readAll();
                        manage.setRequests(requestDAO.readAll());
                        
                        message = "Manage.jsp";
                    }
                } else {
                    message =  "* Contrase&ntilde;a incorrecta";
                }
            } else {
                message =  "* Usuario no encontrado";
            }

        } catch (Exception e) {
            message =  "* Usuario no encontrado";
        }
        
        PrintWriter out = response.getWriter();
        out.println(message);
        //processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
