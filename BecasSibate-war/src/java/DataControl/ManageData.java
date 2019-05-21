package DataControl;

import DTO.RequestDTO;
import DTO.UserDTO;
import java.util.ArrayList;
import java.util.List;

public class ManageData {
    private List<UserDTO> users;
    private List<RequestDTO> requests;
    
    private static ManageData instance = null;

    private ManageData() {
        users = new ArrayList<>();
        requests = new ArrayList<>();
    }
    
    public static ManageData getInstance() {
        if(instance == null) {
            instance = new ManageData();
        }
        return instance;
    }    

    public List<UserDTO> getUsers() {
        return users;
    }

    public void setUsers(List<UserDTO> users) {
        this.users = users;
    }

    public List<RequestDTO> getRequests() {
        return requests;
    }

    public void setRequests(List<RequestDTO> requests) {
        this.requests = requests;
    }
}
