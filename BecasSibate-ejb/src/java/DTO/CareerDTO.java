package DTO;

public class CareerDTO {
    private int career_id;
    private String name;

    public CareerDTO() {
    }

    public CareerDTO(String name) {
        this.name = name;
    }

    public CareerDTO(int career_id, String name) {
        this.career_id = career_id;
        this.name = name;
    }

    public int getCareer_id() {
        return career_id;
    }

    public void setCareer_id(int career_id) {
        this.career_id = career_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
