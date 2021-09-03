/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.in5bm.equipo3.models.dao;

import com.in5bm.equipo3.db.Conexion;
import com.in5bm.equipo3.models.domain.Horario;
import com.in5bm.equipo3.models.idao.IHorarioDao;
import java.sql.Time;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * 
 * @author Brandon Andree Palma Hernandez
 * @date 31/08/2021
 * @time 03:44:26 PM
 */
public class HorarioDaoImpl implements IHorarioDao{
    
    private static final String SQL_SELECT = "SELECT * FROM horario";
    private static final String SQL_DELETE = "DELETE from horario where horario_id = ?";
    
    private Connection conn = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;
    private Horario horario = null;
    private List<Horario> listaHorario = new ArrayList<>();

    @Override
    public List<Horario> listar() {
        try{
            conn = Conexion.getConnection();
            pstmt= conn.prepareStatement(SQL_SELECT);
            rs = pstmt.executeQuery();
            while (rs.next()){
                int idHorario = rs.getInt("horario_id");
                Time horaFinal = rs.getTime("horario_final");
                Time horaInicio = rs.getTime("horario_inicio");
                
                horario = new Horario(idHorario, horaFinal, horaInicio);
                listaHorario.add(horario);
            }
        } catch(SQLException e){
            e.printStackTrace(System.out);
        }
        finally{
            Conexion.close(rs);
            Conexion.close(pstmt);
            Conexion.close(conn);
        }
        return listaHorario;
    }

    @Override
    public Horario encontrar(Horario horario) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int insertar(Horario horario) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int actualizar(Horario horario) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int eliminar(Horario horario) {
        int rows = 0;
        try{
            conn = Conexion.getConnection();
            pstmt= conn.prepareStatement(SQL_DELETE);
            pstmt.setInt(1, horario.getIdHorario());
            rows = pstmt.executeUpdate();
        } catch(SQLException e){
            if(e.getErrorCode()==1451){
                System.out.println("El horario a eliminar puede estar asignado a un curso."
                +"\nElimine el curso seleccionado");
            }
        } finally{
            Conexion.close(pstmt);
            Conexion.close(conn);
        }
        return rows;
    }

}
