package DTO;

import java.util.List;

public class UserDTO {
    // Document of the user
    private String id;
    private String name;
    private String email;
    private String password;
    private String url_photo;
    private String rol;
    
    // Store all the phones
    private List<PhoneDTO> phones;

    public UserDTO() {
    }

    public UserDTO(String id, String name, String email, String password, String url_photo, String rol) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.url_photo = url_photo;
        this.rol = rol;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUrl_photo() {
        return url_photo;
    }

    public void setUrl_photo(String url_photo) {
        this.url_photo = url_photo;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public List<PhoneDTO> getPhones() {
        return phones;
    }

    public void setPhones(List<PhoneDTO> phones) {
        this.phones = phones;
    }
}
