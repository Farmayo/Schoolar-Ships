package DTO;

public class EmployeeDTO {
    private int employee_id;
    private String user_id;
    private int position_id;

    public EmployeeDTO(String user_id, int position_id) {
        this.employee_id = 0;
        this.user_id = user_id;
        this.position_id = position_id;
    }

    public EmployeeDTO(int employee_id, String user_id, int position_id) {
        this.employee_id = employee_id;
        this.user_id = user_id;
        this.position_id = position_id;
    }
    
    public int getEmployee_id() {
        return employee_id;
    }

    public void setEmployee_id(int employee_id) {
        this.employee_id = employee_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public int getPosition_id() {
        return position_id;
    }

    public void setPosition_id(int position_id) {
        this.position_id = position_id;
    }

    
    
}
