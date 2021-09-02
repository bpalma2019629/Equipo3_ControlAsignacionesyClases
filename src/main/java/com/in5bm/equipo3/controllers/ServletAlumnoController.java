/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */





package com.in5bm.equipo3.controllers;

import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import com.in5bm.equipo3.models.domain.Alumno;
import com.in5bm.equipo3.models.dao.AlumnoDaoImpl;

/**
 *
 * @author garci
 * @date 31/08/2021
 * @time 07:12:03 PM
 */

@WebServlet("/ServletAlumnoController")
public class ServletAlumnoController extends HttpServlet {

    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String accion = request.getParameter("accion");

        if (accion != null) {
            switch (accion) {
                case "listar":
                    listarAlumnos(request, response);
                    break;
                case "editar":
                    break;
                case "eliminar":
                    eliminarAlumnos(request, response);
                    break;

            }
        }

    }

    private void listarAlumnos(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List<Alumno> listaAlumno = new AlumnoDaoImpl().listar();
        double saldo = 0;

        for (Alumno estudiante : listaAlumno) {
            
        }
        HttpSession sesion = request.getSession();
        sesion.setAttribute("listadoAlumno", listaAlumno);
        sesion.setAttribute("ver alumno", listaAlumno.size());
       
        response.sendRedirect("alumno.jsp");

    }

    private void eliminarAlumnos(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int carne = Integer.parseInt(request.getParameter("carne"));

        Alumno alumno = new Alumno(carne);

        int registrosEliminados = new AlumnoDaoImpl().eliminar(alumno);

        System.out.println("Cantidad de registros eliminar: " + registrosEliminados);

        listarAlumnos(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {

    }
    
}
