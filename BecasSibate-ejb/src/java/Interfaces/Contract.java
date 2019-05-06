package Interfaces;

import java.util.List;
import javax.ejb.Local;

@Local
public interface Contract <T> {
    public boolean create(T in);
    public boolean delete(Object key);
    public boolean update(T in);
    
    // Result sets
    public T read(Object key);
    public List<T> readAll();
}
