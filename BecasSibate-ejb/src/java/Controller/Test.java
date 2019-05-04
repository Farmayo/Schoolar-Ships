
package Controller;

import DAO.PhoneDAO;
import DAO.UserDAO;
import DTO.PhoneDTO;
import DTO.UserDTO;
import java.util.ArrayList;
import java.util.List;

public class Test {

    public Test() {
        PhoneDAO phoneDAO = new PhoneDAO();
        List<PhoneDTO> phones = new ArrayList<>();
        
        phones = phoneDAO.readAll();
        
        System.out.println("N° Phones: " + phones.size());
    }
    
    public static void main(String[] args) {
        new Test();
    }
    
}
