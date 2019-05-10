
package Controller;

import DAO.PhoneDAO;
import DAO.UserDAO;
import DTO.PhoneDTO;
import DTO.UserDTO;
import java.util.ArrayList;
import java.util.List;

public class Test {

    public Test() {
        UserDAO userDAO = new UserDAO();
        UserDTO userDTO = userDAO.read("1072197550");
        System.out.println(userDTO.getEmail());
    }
    
    public static void main(String[] args) {
        new Test();
    }
}
