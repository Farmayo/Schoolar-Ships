package Interfaces;

import DTO.StudentDTO;
import javax.ejb.Local;

@Local
public interface IStudent extends Contract<StudentDTO>{
    
}
