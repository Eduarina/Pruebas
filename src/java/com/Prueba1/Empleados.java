package com.Prueba1;

/**
 *
 * @author Eduardo Soriano
 */

public class Empleados {
    
    private int idEmp;
    private String nombre;
    private String apePat;
    private String apeMat;
    private int idUser;
    private int tipo;
    private String st;

    public Empleados(int idEmp, String nombre, String apePat, String apeMat, int idUser, int tipo, String st) {
        this.idEmp = idEmp;
        this.nombre = nombre;
        this.apePat = apePat;
        this.apeMat = apeMat;
        this.idUser = idUser;
        this.tipo = tipo;
        this.st = st;
    }

    public Empleados(String nombre, String apePat, String apeMat, int idUser, int tipo, String st) {
        this.nombre = nombre;
        this.apePat = apePat;
        this.apeMat = apeMat;
        this.idUser = idUser;
        this.tipo = tipo;
        this.st = st;
    }

    public void setIdEmp(int idEmp) {
        this.idEmp = idEmp;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApePat(String apePat) {
        this.apePat = apePat;
    }

    public void setApeMat(String apeMat) {
        this.apeMat = apeMat;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    public void setSt(String st) {
        this.st = st;
    }

    public int getIdEmp() {
        return idEmp;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApePat() {
        return apePat;
    }

    public String getApeMat() {
        return apeMat;
    }

    public int getIdUser() {
        return idUser;
    }

    public int getTipo() {
        return tipo;
    }

    public String getSt() {
        return st;
    }

    @Override
    public String toString() {
        return " <tr> <td>"+nombre+" "+apePat+" "+apeMat+"</td> </tr>";
    }
    
    public String getNombreCompleto(){
        return nombre+" "+apePat+" "+apeMat;
    }
    
    
}
