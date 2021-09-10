

package com.in5bm.equipo3.controllers;
import com.in5bm.equipo3.models.dao.CarreraTecnicaDaolmpl;
import com.in5bm.equipo3.models.domain.CarreraTecnica;
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
 * @time 10:02:11 AM
 *
 */
@WebServlet("/ServletCarreraTecnicaController")
public class ServletCarreraTecnicaController extends HttpServlet{
    
    private static final String JSP_LISTAR= "vistas/carrera-tecnica/carrera-tecnica.jsp";
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String accion = request.getParameter("accion");
        
        if(accion != null) {
            switch(accion) {
                case "listar":
                    listarCarrerasTecnicas(request, response);
                    break;
                case "editar":
                    break;
                case "eliminar":
                    eliminarCarreraTecnica(request, response);
                    break;
            }
        }
    }
    
    private void eliminarCarreraTecnica(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String codigoCarrera = request.getParameter("codigoCarrera");
        CarreraTecnica carreraTecnica = new CarreraTecnica(codigoCarrera);
        int registrosEliminados = new CarreraTecnicaDaolmpl().eliminar(carreraTecnica);
        System.out.println("Cantidad de registros eliminados: "+ registrosEliminados);
        listarCarrerasTecnicas(request,response); 
    }
    
    private void listarCarrerasTecnicas(HttpServletRequest request, HttpServletResponse response) throws IOException{
        
        List<CarreraTecnica> listaCarreraTecnica = new CarreraTecnicaDaolmpl().listar();
        
        HttpSession sesion = request.getSession();
        sesion.setAttribute("listadoCarreraTecnica", listaCarreraTecnica);
        response.sendRedirect(JSP_LISTAR);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response){
        
    }
}
