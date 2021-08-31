/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.in5bm.equipo3.models.idao;

import com.equipo3.models.domain.*;
import java.util.List;

/**
 *
 * @author Brandon Andree Palma Hernandez
 */
public interface IInstructorDao {
    
     public List<Instructor> listar();
    public Instructor encontrar(Instructor instructor);
    public int insertar(Instructor instructor);
    public int actualizar(Instructor instructor);
    public int eliminar(Instructor instructor);
    
}
