package modelo;
public class Disponibilidad {
    private String id_disponible;
    private String fecha_disponible;
    private String horario_disponible;

    public Disponibilidad(String id_disponible, String fecha_disponible, String horario_disponible) {
        this.id_disponible = id_disponible;
        this.fecha_disponible = fecha_disponible;
        this.horario_disponible = horario_disponible;
    }

    public String getId_disponible() {
        return id_disponible;
    }

    public void setId_disponible(String id_disponible) {
        this.id_disponible = id_disponible;
    }

    public String getFecha_disponible() {
        return fecha_disponible;
    }

    public void setFecha_disponible(String fecha_disponible) {
        this.fecha_disponible = fecha_disponible;
    }

    public String getHorario_disponible() {
        return horario_disponible;
    }

    public void setHorario_disponible(String horario_disponible) {
        this.horario_disponible = horario_disponible;
    }
    
}
