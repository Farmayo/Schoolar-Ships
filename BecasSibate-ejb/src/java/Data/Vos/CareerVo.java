/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data.Vos;

/**
 *
 * @author ESTACION
 */
public class CareerVo {

    public int getId_Usuario() {
        return id_Usuario;
    }

    public void setId_Usuario(int id_Usuario) {
        this.id_Usuario = id_Usuario;
    }

    public int getId_Carrera() {
        return id_Carrera;
    }

    public void setId_Carrera(int id_Carrera) {
        this.id_Carrera = id_Carrera;
    }

    public String getFecha_Inicio() {
        return fecha_Inicio;
    }

    public void setFecha_Inicio(String fecha_Inicio) {
        this.fecha_Inicio = fecha_Inicio;
    }
    private int id_Usuario;
    private int id_Carrera;
    private String fecha_Inicio;
}
