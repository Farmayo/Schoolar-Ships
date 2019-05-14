package Interfaces;

import DTO.UserDTO;
import javax.ejb.Local;

@Local
public interface IUser extends Contract<UserDTO>{
    
}
