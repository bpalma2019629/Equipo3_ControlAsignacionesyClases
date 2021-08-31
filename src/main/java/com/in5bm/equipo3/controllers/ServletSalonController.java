/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.in5bm.equipo3.controllers;

import com.in5bm.equipo3.models.dao.SalonDaoImpl;
import com.equipo3.models.domain.Salon;
import java.io.IOException;
import java.util.List;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Kenneth Gerardo García Lemus
 */
@WebServlet("/ServletSalonController")
public class ServletSalonController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        List<Salon> listaSalon = new SalonDaoImpl().listar();

        String accion = request.getParameter("accion");

        if (accion != null) {
            switch (accion) {
                case "listar":
                    listarSalones(request, response);
                    break;
                case "editar":
                    break;
                case "eliminar":
                    eliminarSalon(request, response);
                    break;

            }
        }
    }

    private void listarSalones(HttpServletRequest request, HttpServletResponse response) throws IOException {

        List<Salon> listaSalon = new SalonDaoImpl().listar();

        HttpSession sesion = request.getSession();
        sesion.setAttribute("listadoSalones", listaSalon);
        sesion.setAttribute("totalSalones", listaSalon.size());

        response.sendRedirect("salon.jsp");

    }

    private void eliminarSalon(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int salonId = Integer.parseInt(request.getParameter("salonId"));

        Salon salon = new Salon(salonId);

        int registrosEliminados = new SalonDaoImpl().eliminar(salon);

        listarSalones(request, response);

    }
}
