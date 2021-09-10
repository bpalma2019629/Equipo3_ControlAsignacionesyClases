package com.in5bm.equipo3.controllers;

import com.in5bm.equipo3.models.dao.HorarioDaoImpl;
import com.in5bm.equipo3.models.domain.Horario;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.ws.rs.OPTIONS;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * 
 * @author Brandon Andree Palma Hernandez
 * @date 31/08/2021
 * @time 03:43:34 PM
 */
@WebServlet("/ServletHorarioController")
public class ServletHorarioController extends HttpServlet{
    
    private static final String JSP_LISTAR= "vistas/horario/horario.jsp";
    
    @Override
    protected void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException{
        
        String accion = request.getParameter("accion");
        
        if (accion != null){
            switch(accion){
                case "listar":
                    listarHorario(request, response);
                    break;
                case "editar":
                    break;
                case "eliminar":
                    eliminarHorario(request, response);
                    break;
            }
                    
        }
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response){
        
    }
   
    private void eliminarHorario(HttpServletRequest request, HttpServletResponse response) throws IOException{
        int idHorario = Integer.parseInt(request.getParameter("idHorario"));
        Horario horario = new Horario(idHorario);
        int registrosEliminados = new HorarioDaoImpl().eliminar(horario);
        System.out.println("Cantidad de registros eliminados: "+ registrosEliminados);
        listarHorario(request,response);
        
        
    }
    
    private void listarHorario(HttpServletRequest request, HttpServletResponse response) throws IOException{
        
        List<Horario> listaHorario = new HorarioDaoImpl().listar();
        
        HttpSession sesion = request.getSession();
        sesion.setAttribute("listadoHorario", listaHorario);
        response.sendRedirect(JSP_LISTAR);
        
        
    }

}
