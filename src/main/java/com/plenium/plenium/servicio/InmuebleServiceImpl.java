package com.plenium.plenium.servicio;

import com.plenium.plenium.dao.InmuebleDao;
import com.plenium.plenium.domain.Inmueble;
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
public class InmuebleServiceImpl implements InmuebleService {

    @Autowired
    private InmuebleDao inmuebleDao;

    @Override
    @Transactional(readOnly = true)
    public List<Inmueble> listarInmuebles() {
        return (List<Inmueble>) inmuebleDao.findAll();
    }

    @Override
    @Transactional
    public void guardar(Inmueble inmueble) {
        inmuebleDao.save(inmueble);
    }

    @Override
    @Transactional
    public void eliminar(Inmueble inmueble) {
        inmuebleDao.delete(inmueble);
    }

    @Override
    @Transactional(readOnly = true)
    public Inmueble encontrarInmueble(Inmueble inmueble) {
        return inmuebleDao.findById(inmueble.getIdInmueble()).orElse(null);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Inmueble> buscarInmuebles(Integer paramPrecioMin, Integer paramPrecioMax) {

        //Parámetros de búsqueda -------------------------------------------------------
        int precioMin = 0;
        int precioMax = 9999999;

        if (paramPrecioMin != 0) {
            precioMin = paramPrecioMin;
        }

        if (paramPrecioMax != 0) {
            precioMax = paramPrecioMax;
        }

        //BUSQUEDA -----------------------------------------------------------------------------
        String SQL_SELECT_BUSQUEDA = "SELECT * FROM `inmuebles` WHERE (`precio` BETWEEN ? AND ?)";

        //Método de búsqueda
        Connection cn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Inmueble> lista = new ArrayList<>();
        Inmueble inmueble = null;

        try {
            cn = Conexion.abrirConexion();
            ps = cn.prepareStatement(SQL_SELECT_BUSQUEDA);

            ps.setInt(1, precioMin);
            ps.setInt(2, precioMax);
            rs = ps.executeQuery();

            while (rs.next()) {
                Long idInmueble = rs.getLong(1);
                Date fechaPublicacion = rs.getDate(2);
                String denominacion = rs.getString(3);
                String tipo = rs.getString(4);
                Integer precio = rs.getInt(5);
                Integer superficieUtil = rs.getInt(6);
                Integer superficieTotal = rs.getInt(7);
                String direccion = rs.getString(8);
                String poblacion = rs.getString(9);
                String provincia = rs.getString(10);
                Integer dormitorios = rs.getInt(11);
                Integer banos = rs.getInt(12);

                String amueblado = rs.getString(13);
                String cocinaEquipada = rs.getString(14);
                String aireAcondicionado = rs.getString(15);
                String calefaccionCentral = rs.getString(16);
                String gasNatural = rs.getString(17);
                String placasSolares = rs.getString(18);
                String armariosEmpotrados = rs.getString(19);
                String terraza = rs.getString(20);
                String aparcamiento = rs.getString(21);
                String ascensor = rs.getString(22);
                String piscina = rs.getString(23);
                String jardin = rs.getString(24);

                String propietarioNombre = rs.getString(25);
                String propietarioApellidos = rs.getString(26);
                String propietarioNif = rs.getString(27);
                String propietarioTelefono = rs.getString(28);
                String propietarioEmail = rs.getString(29);

                String imagen = rs.getString(30);
                Long idUsuario = rs.getLong(31);

                inmueble = new Inmueble(idInmueble, fechaPublicacion, denominacion, tipo, precio, superficieUtil, superficieTotal, direccion, poblacion, provincia, dormitorios, banos, amueblado, cocinaEquipada, aireAcondicionado, calefaccionCentral, gasNatural, placasSolares, armariosEmpotrados, terraza, aparcamiento, ascensor, piscina, jardin, propietarioNombre, propietarioApellidos, propietarioNif, propietarioTelefono, propietarioEmail, imagen, idUsuario);
                lista.add(inmueble);
            }

        } catch (SQLException ex) {
            Logger.getLogger(InmuebleServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            Conexion.close(rs);
            Conexion.close(ps);
            Conexion.close(cn);
        }
        return lista;
    }

}
