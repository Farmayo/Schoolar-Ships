
package Controller;

import DAO.StudentDAO;
import DAO.UserDAO;
import DTO.StudentDTO;
import DTO.UserDTO;
import javafx.util.Pair;
import javax.ejb.Stateless;

@Stateless
public class UserStudent implements StudentUserLocal{
    
    private UserDAO userDAO;
    private StudentDAO studentDAO;
    
    private UserDTO userDTO;
    private StudentDTO studentDTO;

    public UserStudent() {
    }

    public UserStudent(UserDTO userDTO, StudentDTO studentDTO) {
        this.userDTO = userDTO;
        this.studentDTO = studentDTO;
    }
    
    @Override
    public boolean create() {
        userDAO = new UserDAO();
        boolean flag = userDAO.create(userDTO);
        
        if(flag) {
            studentDAO = new StudentDAO();
            boolean flag2 = studentDAO.create(studentDTO);
            if(flag2) {
                return true;
            } else {
                userDAO.delete(userDTO.getId());
            }
        }
        return false;
    }
    
    @Override
    public Pair<UserDTO, StudentDTO> readUserStudent(Object key) {
        userDAO = new UserDAO();
        userDTO = userDAO.read(key);
        if(userDTO != null) {
            studentDAO = new StudentDAO();
            studentDTO = studentDAO.read(key);
            if(studentDTO != null) {
                studentDTO.setUser_id(userDTO.getId());
                return new Pair<>(userDTO, studentDTO);
            } else {
                return null;
            }
        } else {
            return null;
        }
    }
    
    @Override
    public boolean deleteUSerStudent(Object key) {
        studentDAO = new StudentDAO();
        if(studentDAO.delete(key)) {
            userDAO = new UserDAO();
            return userDAO.delete(key);
        } else {
            return false;
        }
    }
}
