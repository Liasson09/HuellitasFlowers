package modelo;
public class Reserva {
    private String id_reserva;
    private double precio;

    public Reserva(String id_reserva, double precio) {
        this.id_reserva = id_reserva;
        this.precio = precio;
    }

    public String getId_reserva() {
        return id_reserva;
    }

    public void setId_reserva(String id_reserva) {
        this.id_reserva = id_reserva;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
    
}
