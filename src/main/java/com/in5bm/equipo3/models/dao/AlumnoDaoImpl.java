/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.in5bm.equipo3.models.dao;
import com.in5bm.equipo3.db.Conexion;
import com.in5bm.equipo3.models.domain.Alumno;
import com.in5bm.equipo3.models.idao.IAlumnoDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author garci
 * @date 31/08/2021
 * @time 07:17:11 PM
 */
public class AlumnoDaoImpl implements IAlumnoDao{

    private static final String SQL_SELECT ="SELECT carne, nombres, apellidos, email  FROM alumno";
    private static final String SQL_DELETE="DELETE FROM alumno where carne = ?";
    private Connection conn = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;
    private Alumno alumno= null;
    List<Alumno> listaAlumnos = new ArrayList<>();
    
    @Override
    public List<Alumno> listar() {
        try{
            conn = Conexion.getConnection();
            pstmt = conn.prepareStatement(SQL_SELECT);
            rs = pstmt.executeQuery();
            while(rs.next()){
                String carne = rs.getString("carne");
                String apellido = rs.getString("apellidos");
                String nombre = rs.getString("nombres");
                String email = rs.getString("email");
              
                alumno = new Alumno(carne, apellido, nombre, email);
                listaAlumnos.add(alumno);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
            Conexion.close(rs);
            Conexion.close(pstmt);
            Conexion.close(conn);
        }
        return listaAlumnos;
    }

    @Override
    public Alumno encontrar(Alumno alumno) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int insertar(Alumno alumno) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int actualizar(Alumno alumno) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int eliminar(Alumno alumno) {
       int rows = 0;
      try{
          conn = Conexion.getConnection();
          pstmt = conn.prepareStatement(SQL_DELETE);
          pstmt.setString(1, alumno.getCarne());
          System.out.println(pstmt.toString());
          rows = pstmt.executeUpdate();
      }catch(SQLException ex){
          ex.printStackTrace();
      }finally{
          Conexion.close(pstmt);
          Conexion.close(conn);
      }
      return rows;
    }
    
    
    
    }

    
    

