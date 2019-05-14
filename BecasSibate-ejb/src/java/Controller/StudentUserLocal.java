package Controller;

import DTO.StudentDTO;
import DTO.UserDTO;
import javafx.util.Pair;
import javax.ejb.Local;

@Local
public interface StudentUserLocal {
    boolean create();
    Pair<UserDTO, StudentDTO> readUserStudent(Object key);
    boolean deleteUSerStudent(Object key);
}
