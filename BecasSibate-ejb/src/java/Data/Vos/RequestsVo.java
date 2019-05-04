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
public class RequestsVo {
    
    private int id_Solicitud;
    private int id_Estudiante;
    private String fecha_Solicitud;
    private String solicitud;
    private int estado_Solicitud;

    public int getId_Solicitud() {
        return id_Solicitud;
    }

    public void setId_Solicitud(int id_Solicitud) {
        this.id_Solicitud = id_Solicitud;
    }

    public int getId_Estudiante() {
        return id_Estudiante;
    }

    public void setId_Estudiante(int id_Estudiante) {
        this.id_Estudiante = id_Estudiante;
    }

    public String getFecha_Solicitud() {
        return fecha_Solicitud;
    }

    public void setFecha_Solicitud(String fecha_Solicitud) {
        this.fecha_Solicitud = fecha_Solicitud;
    }

    public String getSolicitud() {
        return solicitud;
    }

    public void setSolicitud(String solicitud) {
        this.solicitud = solicitud;
    }

    public int getEstado_Solicitud() {
        return estado_Solicitud;
    }

    public void setEstado_Solicitud(int estado_Solicitud) {
        this.estado_Solicitud = estado_Solicitud;
    }
}
