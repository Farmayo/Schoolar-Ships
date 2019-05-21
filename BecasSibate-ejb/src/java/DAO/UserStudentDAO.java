
package DAO;

import DTO.StudentDTO;
import DTO.UserDTO;
import java.util.ArrayList;
import java.util.List;
import javafx.util.Pair;

public class UserStudentDAO {
    private UserDTO userDTO;
    private StudentDTO studentDTO;

    public UserStudentDAO() {
    }

    public UserStudentDAO(UserDTO userDTO, StudentDTO studentDTO) {
        this.userDTO = userDTO;
        this.studentDTO = studentDTO;
    }
    
    private Pair<Boolean, Boolean> create() {
        UserDAO userDAO = new UserDAO();
        boolean userFlag = userDAO.create(userDTO);
        
        StudentDAO studentDAO = new StudentDAO();
        boolean studentFlag = studentDAO.create(studentDTO);
        
        return new Pair<>(userFlag, studentFlag);
    }
    
    private boolean delete(Object key) {
        StudentDAO studentDAO = new StudentDAO();
        boolean studentFlag = studentDAO.delete(key);
        
        if(studentFlag) {
            UserDAO userDAO = new UserDAO();
            boolean userFlag = userDAO.create(userDTO);
            if(userFlag) {
                return true;
            } else {
                 return false;
            }
        }
        
        return false;
    }
    
    private UserDTO read(String key){
        UserDAO userDAO = new UserDAO();
        UserDTO out = userDAO.read(key);
        
        return out;
    }
}
