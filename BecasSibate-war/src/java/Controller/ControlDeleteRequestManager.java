package Controller;

import DataControl.ManageData;
import Interfaces.IRequest;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ControlDeleteRequestManager extends HttpServlet {

    @EJB
    private IRequest requestDAO;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
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
        // processRequest(request, response);
        
        String id = request.getParameter("id");
        
        ManageData manage = ManageData.getInstance();
        
        for(int i = 0; i < manage.getRequests().size(); i++) {
            if(manage.getUsers().get(i).getId().equals(id)) {
                List requests = manage.getRequests();
                requests.remove(i);
                manage.setUsers(requests);
                break;
            }
        }
        
        boolean flag = requestDAO.delete(id);
        String message = "";
        
        if(flag) {
            message = "200";
        } else {
            message = "0";
        }
        
        PrintWriter out = response.getWriter();
        out.println(message);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
