/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.equipo3.models.idao;

import com.equipo3.models.domain.*;
import java.util.List;

/**
 *
 * @author Brandon Andree Palma Hernandez
 */
public interface ICursoDao {
    
    public List<Curso> listar();
    public Curso encontrar(Curso curso);
    public int insertar(Curso curso);
    public int actualizar(Curso curso);
    public int eliminar(Curso curso);
    
}