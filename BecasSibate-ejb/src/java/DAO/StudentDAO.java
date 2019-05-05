package DAO;

import DTO.StudentDTO;
import Interfaces.Contract;
import java.util.List;

public class StudentDAO implements Contract<StudentDTO>{
    
    private static final String SQL_INSERT = "INSERT INTO student () VALUES()";
    private static final String SQL_DELETE = "";
    private static final String SQL_UPDATE = "";
    private static final String SQL_READ = "";
    private static final String SQL_READALL = "";
    

    @Override
    public boolean create(StudentDTO in) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(Object key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean update(StudentDTO in) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public StudentDTO read(Object key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<StudentDTO> readAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
