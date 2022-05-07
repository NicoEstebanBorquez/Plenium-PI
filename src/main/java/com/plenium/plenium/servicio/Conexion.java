package com.plenium.plenium.servicio;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Conexion {

    private static final String JDBC_URL = "jdbc:mysql://localhost/plenium_db?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true"; //"jdbc:mysql://localhost:3306/booking_manager?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";

    public static Connection abrirConexion() throws SQLException {
        return DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
    }

    public static void close(ResultSet resultado) {
        try {
            resultado.close();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
    }

    public static void close(PreparedStatement sentencia) {
        try {
            sentencia.close();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
    }

    public static void close(Connection conexion) {
        try {
            conexion.close();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
    }

}


/*
 @Transactional(readOnly = true)
    public Usuario encontrarUsuarioPorUsername(String username) {

        //SELECT * FROM `usuario` WHERE `username`= 'admin'
        String SQL_SELECT_USERNAME = "SELECT * FROM usuario WHERE username=?";
        Connection cn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Usuario usuario = new Usuario();

        try {
            cn = Conexion.abrirConexion();
            ps = cn.prepareStatement(SQL_SELECT_USERNAME);
            ps.setString(1, username);
            rs = ps.executeQuery();

            while (rs.next()) {
                Long idUsuario = rs.getLong(1);
                String username2 = rs.getString(2);
                String password = rs.getString(3);
                String nombre = rs.getString(4);
                String primerApellido = rs.getString(5);
                String segundoApellido = rs.getString(6);
                String telefono = rs.getString(7);
                String email = rs.getString(8);

                usuario = new Usuario(idUsuario, username2, password, nombre, primerApellido, segundoApellido, telefono, email);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioService.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            Conexion.close(rs);
            Conexion.close(ps);
            Conexion.close(cn);
        }

        return usuario;
    }
*/