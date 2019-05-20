package Controller;

import DAO.UserDAO;
import DTO.UserDTO;
import Interfaces.IUser;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ControlUpdateUserManager extends HttpServlet {

    @EJB
    private IUser userDAO;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            userDAO = new UserDAO();
            doPost(request, response);
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
        
        UserDTO userDTO = new UserDTO();
        
        userDTO.setId(request.getParameter("id"));
        userDTO.setName(request.getParameter("name"));
        userDTO.setPassword(request.getParameter("password"));
        userDTO.setEmail(request.getParameter("email"));
        userDTO.setRol(request.getParameter("rol"));
        
        boolean flag = userDAO.update(userDTO);
        String message = "";
        
        if(flag) {
            message = "200";
        } else {
            message = "0";
        }
        
        PrintWriter out = response.getWriter();
        out.println(message);
        
        // processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
