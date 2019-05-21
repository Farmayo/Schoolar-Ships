package Controller;

import DataControl.Data;
import DataControl.ManageData;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ControlDeleteUseRManager extends HttpServlet {

    @EJB
    private StudentUserLocal userStudent;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            userStudent = new UserStudent();
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
        
        String id = request.getParameter("id");
        
        ManageData manage = ManageData.getInstance();
        
        for(int i = 0; i < manage.getUsers().size(); i++) {
            if(manage.getUsers().get(i).getId().equals(id)) {
                List users = manage.getUsers();
                users.remove(i);
                manage.setUsers(users);
                break;
            }
        }
        
        boolean flag = userStudent.deleteUSerStudent(id);
        
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
