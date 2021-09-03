/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.in5bm.equipo3.models.domain;
import java.sql.Timestamp;

/**
 *
 * @author Josdvin Alexander Macario Barán
 * @date 29/08/2021
 * @time 12:45:00 AM
 */
public class AsignacionAlumno {
    private String asignacionId;
    private Timestamp fechaAsignacion;
    private String carne;
    private String nombreCompleto;
    private String email;
    private int cursoId;
    private int ciclo;
    private int cupoMaximo;
    private int cupoMinimo;

    public AsignacionAlumno() {
    }

    public AsignacionAlumno(String asignacionId) {
        this.asignacionId = asignacionId;
    }

    public AsignacionAlumno(Timestamp fechaAsignacion, String carne, String nombreCompleto, String email, int cursoId, int ciclo, int cupoMaximo, int cupoMinimo) {
        this.fechaAsignacion = fechaAsignacion;
        this.carne = carne;
        this.nombreCompleto = nombreCompleto;
        this.email = email;
        this.cursoId = cursoId;
        this.ciclo = ciclo;
        this.cupoMaximo = cupoMaximo;
        this.cupoMinimo = cupoMinimo;
    }

    public AsignacionAlumno(String asignacionId, Timestamp fechaAsignacion, String carne, String nombreCompleto, String email, int cursoId, int ciclo, int cupoMaximo, int cupoMinimo) {
        this.asignacionId = asignacionId;
        this.fechaAsignacion = fechaAsignacion;
        this.carne = carne;
        this.nombreCompleto = nombreCompleto;
        this.email = email;
        this.cursoId = cursoId;
        this.ciclo = ciclo;
        this.cupoMaximo = cupoMaximo;
        this.cupoMinimo = cupoMinimo;
    }

    public String getAsignacionId() {
        return asignacionId;
    }

    public void setAsignacionId(String asignacionId) {
        this.asignacionId = asignacionId;
    }

    public Timestamp getFechaAsignacion() {
        return fechaAsignacion;
    }

    public void setFechaAsignacion(Timestamp fechaAsignacion) {
        this.fechaAsignacion = fechaAsignacion;
    }

    public String getCarne() {
        return carne;
    }

    public void setCarne(String carne) {
        this.carne = carne;
    }

    public String getNombreCompleto() {
        return nombreCompleto;
    }

    public void setNombreCompleto(String nombreCompleto) {
        this.nombreCompleto = nombreCompleto;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getCursoId() {
        return cursoId;
    }

    public void setCursoId(int cursoId) {
        this.cursoId = cursoId;
    }

    public int getCiclo() {
        return ciclo;
    }

    public void setCiclo(int ciclo) {
        this.ciclo = ciclo;
    }

    public int getCupoMaximo() {
        return cupoMaximo;
    }

    public void setCupoMaximo(int cupoMaximo) {
        this.cupoMaximo = cupoMaximo;
    }

    public int getCupoMinimo() {
        return cupoMinimo;
    }

    public void setCupoMinimo(int cupoMinimo) {
        this.cupoMinimo = cupoMinimo;
    }

    @Override
    public String toString() {
        return "AsignacionAlumno{" + "asignacionId=" + asignacionId + ", fechaAsignacion=" + fechaAsignacion + ", carne=" + carne + ", nombreCompleto=" + nombreCompleto + ", email=" + email + ", cursoId=" + cursoId + ", ciclo=" + ciclo + ", cupoMaximo=" + cupoMaximo + ", cupoMinimo=" + cupoMinimo + '}';
    }    
    
}


