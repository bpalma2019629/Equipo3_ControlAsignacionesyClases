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
public interface ICarreraTecnicaDao {
    
    public List<CarreraTecnica> listar();
    public CarreraTecnica encontrar(CarreraTecnica carrera);
    public int insertar(CarreraTecnica carrera);
    public int actualizar(CarreraTecnica carrera);
    public int eliminar(CarreraTecnica carrera);
    
}
