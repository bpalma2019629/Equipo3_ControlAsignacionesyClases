/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.in5bm.equipo3.models.domain;

/**
 *
 * @author garci
 * @date 31/08/2021
 * @time 06:54:46 PM
 */
public class Alumno {

    private int carne;
    private String nombres;
    private String apellidos;
    private String email;

    public Alumno() {
        
        
    }

    public Alumno(int carne) {
        this.carne = carne;
    }

    public Alumno(String nombres, String apellidos, String email) {
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.email = email;
    }

    public Alumno(int carne, String nombres, String apellidos, String email) {
        this.carne = carne;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.email = email;
    }

    public int getCarne() {
        return carne;
    }

    public void setCarne(int carne) {
        this.carne = carne;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Alumno{" + "carne=" + carne + ", nombres=" + nombres + ", apellidos=" + apellidos + ", email=" + email + '}';
    }
    
    
    
}
