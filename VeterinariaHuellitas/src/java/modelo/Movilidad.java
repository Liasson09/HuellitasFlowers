package modelo;
public class Movilidad {
   private String matricula;
   private String horario;
   private String direccion;
   private String referencia;

    public Movilidad(String matricula, String horario, String direccion, String referencia) {
        this.matricula = matricula;
        this.horario = horario;
        this.direccion = direccion;
        this.referencia = referencia;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getReferencia() {
        return referencia;
    }

    public void setReferencia(String referencia) {
        this.referencia = referencia;
    }
   
}
