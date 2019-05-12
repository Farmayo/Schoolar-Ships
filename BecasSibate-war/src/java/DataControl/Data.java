package DataControl;

import DTO.UserDTO;

public class Data {
    
    private boolean tryUser;
    private boolean tryPassword;
    private UserDTO activeUser;
    
    private static Data instance;

    public Data() {
        this.tryUser = false;
        this.tryPassword = false;
    }
    
    public static Data getInstance() {
        if (instance == null) {
            instance = new Data();
        }
        return instance;
    }

    public boolean isTryUser() {
        return tryUser;
    }

    public void setTryUser(boolean tryUser) {
        this.tryUser = tryUser;
    }

    public boolean isTryPassword() {
        return tryPassword;
    }

    public void setTryPassword(boolean tryPassword) {
        this.tryPassword = tryPassword;
    }

    public UserDTO getActiveUser() {
        return activeUser;
    }

    public void setActiveUser(UserDTO activeUser) {
        this.activeUser = activeUser;
    }
    
    
}
