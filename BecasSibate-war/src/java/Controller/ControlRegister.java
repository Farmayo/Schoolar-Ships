/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DTO.StudentDTO;
import DTO.UserDTO;
import DataControl.Data;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.util.Pair;
import javax.ejb.EJB;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JAIRJAP
 */
public class ControlRegister extends HttpServlet {

    @EJB
    private StudentUserLocal userStudent;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            Data control = Data.getInstance();
            
            String name = request.getParameter("name");
            String lastname = request.getParameter("lastname");
            String doc = request.getParameter("doc");
            String email = request.getParameter("email");
            String age = request.getParameter("age");
            String password1 = request.getParameter("password1");
            String password2 = request.getParameter("password2");
            
            UserDTO userDTO = new UserDTO();
            userDTO.setId(doc);
            userDTO.setName(name + " " + lastname);
            userDTO.setEmail(email);
            userDTO.setPassword(password1);
            userDTO.setUrl_photo("empty");
            
            StudentDTO studentDTO = new StudentDTO();
            studentDTO.setUser_id(userDTO.getId());
            studentDTO.setAge(Integer.parseInt(age));
            
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
            Date date = new Date();
            
            studentDTO.setJoin_date(dateFormat.format(date).toString());
            studentDTO.setId_career(1);
            studentDTO.setId_student(0);
            
            userStudent = new UserStudent(userDTO, studentDTO);
            if(userStudent.create()) {
                response.sendRedirect("Login.jsp");
                control.setUserStudent(null);
            } else {
                control.setUserStudent(new Pair<>(userDTO, studentDTO));
                response.sendRedirect("Register.jsp");
            }
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

    private UserStudent lookupUserStudentBean() {
        try {
            Context c = new InitialContext();
            return (UserStudent) c.lookup("java:global/BecasSibate/BecasSibate-ejb/UserStudent!Controller.UserStudent");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

}
