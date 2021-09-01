

package com.in5bm.equipo3.models.dao;

import com.in5bm.equipo3.db.Conexion;
import com.equipo3.models.domain.CarreraTecnica;
import com.in5bm.equipo3.models.idao.ICarreraTecnicaDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 
 */
 public class CarreraTecnicaDaolmpl implements ICarreraTecnicaDao {
     
    private static final String SQL_SELECT = "SELECT codigo_carrera, nombre FROM carrera_tecnica";
    private static final String SQL_DELETE = "DELETE FROM carrera_tecnica WHERE codigo_carrera = ?";
    
    private Connection conn = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;
    private CarreraTecnica carreraTecnica = null;
    private List<CarreraTecnica> listaCarrerasTecnicas = new ArrayList<>();
   
   
    @Override
    public List<CarreraTecnica> listar() {
        try{
            conn = Conexion.getConnection();
            pstmt = conn.prepareStatement(SQL_SELECT);
            rs = pstmt.executeQuery();
            
            while (rs.next()){
                String codigoCarrera = rs.getString("codigo_carrera");
                String nombre = rs.getString("nombre");
                
                carreraTecnica = new CarreraTecnica(codigoCarrera, nombre);
                listaCarrerasTecnicas.add(carreraTecnica);
            }
        } catch(SQLException e){
            e.printStackTrace(System.out);
        } catch(Exception e){
            e.printStackTrace(System.out);
        } finally{
            Conexion.close(rs);
            Conexion.close(pstmt);
            Conexion.close(conn);
        }
        return listaCarrerasTecnicas;
    }
    
    
    @Override
    public CarreraTecnica encontrar(CarreraTecnica carreraTecnica) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int insertar(CarreraTecnica carreraTecnica) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int actualizar(CarreraTecnica carreraTecnica) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    @Override
    public int eliminar(CarreraTecnica carreraTecnica) {
        int rows = 0;
        try{
            conn = Conexion.getConnection();
            pstmt= conn.prepareStatement(SQL_DELETE);
            pstmt.setString(1, carreraTecnica.getCodigoCarrera());
            rows = pstmt.executeUpdate();
        } catch(SQLException e){
            if(e.getErrorCode()==1451){
                System.out.println("La carrera a eliminar puede estar asignada a un curso.");
                System.out.println("Primero elimine el curso.");
            }
            e.printStackTrace(System.out);
        } finally{
            Conexion.close(pstmt);
            Conexion.close(conn);
        }
        return rows;
    }
}
