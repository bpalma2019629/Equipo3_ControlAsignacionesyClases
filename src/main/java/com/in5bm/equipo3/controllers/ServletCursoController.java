/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.in5bm.equipo3.controllers;

import com.in5bm.equipo3.models.dao.CursoDaoImpl;
import com.in5bm.equipo3.models.domain.Curso;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;

/**
 * 
 * @author Juan Diego Solís Martínez
 * @date 28/08/2021
 * @time 10:38:49 AM
 *
 */

@WebServlet("/ServletCursoController")
public class ServletCursoController extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String accion = request.getParameter("accion");
        
        if(accion != null) {
            switch(accion) {
                case "listar":
                    listarCursos(request, response);
                    break;
                case "editar":
                    // metodo editar
                    break;
                case "eliminar":
                    eliminarCurso(request, response);
                    break;
            }
        }
    }
    
    private void eliminarCurso(HttpServletRequest request, HttpServletResponse response) throws IOException {
        
        int cursoId = Integer.parseInt(request.getParameter("cursoId"));
    
        Curso curso = new Curso(cursoId);
        
        int registrosEliminados = new CursoDaoImpl().eliminar(curso);
        
        System.out.println("Cantidad de registros eliminados: "+ registrosEliminados);
        
        listarCursos(request, response);
    }
    
    private void listarCursos(HttpServletRequest request, HttpServletResponse response) throws IOException{
        
        List<Curso> listaCurso = new CursoDaoImpl().listar();
        
        HttpSession sesion = request.getSession();
        sesion.setAttribute("listadoCurso", listaCurso);
        response.sendRedirect("curso.jsp");
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response){
        
    }
}
