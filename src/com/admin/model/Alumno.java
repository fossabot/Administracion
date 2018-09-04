package com.admin.model;

public class Alumno {

    private int id;
    private String nombres;
    private String apellidos;
    private int dni;
    private int telefono;

    public void setId(int id) {
        this.id = id;
    }
    public int getId() {
        return id;
    }
    public String getNombres() {
        return nombres;
    }
    public void setNombres(String nombres) {
        this.nombres = nombres;
    }
    public String getApellidos() {
        return apellidos;
    }
    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }
    public int getDni() {
        return dni;
    }
    public void setDni(int dni) {
        this.dni = dni;
    }
    public int getTelefono() {
        return telefono;
    }
    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    @Override
    public String toString() {
        return "[" + id + "] [" + nombres + " " + apellidos + "] [" + dni + "] [" + telefono + "]";
    }

}
