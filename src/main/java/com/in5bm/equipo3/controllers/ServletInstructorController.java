

package com.in5bm.equipo3.controllers;
import com.in5bm.equipo3.models.dao.InstructorDaolmpl;
import com.in5bm.equipo3.models.domain.Instructor;
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
 * @author Omar Chocojay
 */
@WebServlet("/ServletInstructorController")
public class ServletInstructorController extends HttpServlet{
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String accion = request.getParameter("accion");
        
        if(accion != null) {
            switch(accion) {
                case "listar":
                    listarInstructores(request, response);
                    break;
                case "editar":
                    break;
                case "eliminar":
                    eliminarInstructor(request, response);
                    break;
            }
        }
    }
    
    private void eliminarInstructor(HttpServletRequest request, HttpServletResponse response) throws IOException{
        int instructorId = Integer.parseInt(request.getParameter("instructorId"));
        Instructor instructor = new Instructor(instructorId);
        int registrosEliminados = new InstructorDaolmpl().eliminar(instructor);
        System.out.println("Cantidad de registros eliminados: "+ registrosEliminados);
        listarInstructores(request,response); 
    }
    
    private void listarInstructores(HttpServletRequest request, HttpServletResponse response) throws IOException{
        
        List<Instructor> listaInstructor = new InstructorDaolmpl().listar();
        
        HttpSession sesion = request.getSession();
        sesion.setAttribute("listadoInstructor", listaInstructor);
        response.sendRedirect("Vistas/instructor.jsp");
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response){
        
    }
}
