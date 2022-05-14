package com.plenium.plenium.servicio;

import com.plenium.plenium.dao.TareaDao;
import com.plenium.plenium.domain.Tarea;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class TareaServiceImpl implements TareaService {

    @Autowired
    private TareaDao tareaDao;

    @Override
    @Transactional(readOnly = true)
    public List<Tarea> listarTareas() {
        return (List<Tarea>) tareaDao.findAll();
    }

    @Override
    @Transactional
    public void guardar(Tarea tarea) {
        tareaDao.save(tarea);
    }

    @Override
    @Transactional
    public void eliminar(Tarea tarea) {
        tareaDao.delete(tarea);
    }

    @Override
    @Transactional(readOnly = true)
    public Tarea encontrarTarea(Tarea tarea) {
        return tareaDao.findById(tarea.getIdTarea()).orElse(null);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Tarea> listarTareasHoy() {

        //Parámetros de búsqueda -------------------------------------------------------
        //Fecha actual:
        java.util.Date utilDate = new java.util.Date();
        java.sql.Date fechaActual = new java.sql.Date(utilDate.getTime());

        //BUSQUEDA -----------------------------------------------------------------------------
        String SQL_SELECT_BUSQUEDA = "SELECT * FROM `tareas` WHERE `fecha_vencimiento` = ?";

        //Método de búsqueda
        Connection cn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Tarea> lista = new ArrayList<>();
        Tarea tarea = null;

        try {
            cn = Conexion.abrirConexion();
            ps = cn.prepareStatement(SQL_SELECT_BUSQUEDA);

            ps.setString(1, fechaActual.toString());

            rs = ps.executeQuery();

            while (rs.next()) {
                Long idTarea = rs.getLong(1);
                String tipo = rs.getString(2);
                Date fechaPublicacion = rs.getDate(3);
                Date fechaVencimiento = rs.getDate(4);
                String titulo = rs.getString(5);
                String descripcion = rs.getString(6);
                Long idUsuario = rs.getLong(7);

                tarea = new Tarea(idTarea, tipo, fechaPublicacion, fechaVencimiento, titulo, descripcion, idUsuario);
                lista.add(tarea);
            }

        } catch (SQLException ex) {
            Logger.getLogger(TareaServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            Conexion.close(rs);
            Conexion.close(ps);
            Conexion.close(cn);
        }
        return lista;
    }

    @Override
    @Transactional(readOnly = true)
    public List<Tarea> listarTareasSemana() {

        //Parámetros de búsqueda -------------------------------------------------------
        //Fecha actual:
        java.util.Date utilDate = new java.util.Date();
        java.sql.Date fechaActual = new java.sql.Date(utilDate.getTime());
        String fechaActualStr = fechaActual.toString();
        String anio_mes = fechaActualStr.substring(0, 8); //año-mes
        String dia = fechaActualStr.substring(fechaActualStr.length() - 2); //día

        int dia_mas_siete = Integer.valueOf(dia) + 7;
        String fechaSemanaStr = anio_mes + String.valueOf(dia_mas_siete);

        //BUSQUEDA -----------------------------------------------------------------------------
        String SQL_SELECT_BUSQUEDA = "SELECT * FROM `tareas` WHERE `fecha_vencimiento` BETWEEN ? AND ?";

        //Método de búsqueda
        Connection cn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Tarea> lista = new ArrayList<>();
        Tarea tarea = null;

        try {
            cn = Conexion.abrirConexion();
            ps = cn.prepareStatement(SQL_SELECT_BUSQUEDA);

            ps.setString(1, fechaActualStr);
            ps.setString(2, fechaSemanaStr);

            
            
            rs = ps.executeQuery();

            while (rs.next()) {
                Long idTarea = rs.getLong(1);
                String tipo = rs.getString(2);
                Date fechaPublicacion = rs.getDate(3);
                Date fechaVencimiento = rs.getDate(4);
                String titulo = rs.getString(5);
                String descripcion = rs.getString(6);
                Long idUsuario = rs.getLong(7);

                tarea = new Tarea(idTarea, tipo, fechaPublicacion, fechaVencimiento, titulo, descripcion, idUsuario);
                lista.add(tarea);
            }

        } catch (SQLException ex) {
            Logger.getLogger(TareaServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            Conexion.close(rs);
            Conexion.close(ps);
            Conexion.close(cn);
        }
        return lista;
    }
}
