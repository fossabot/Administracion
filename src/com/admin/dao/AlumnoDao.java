package com.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.admin.model.Alumno;
import com.admin.util.DbUtil;

public class AlumnoDao {

    private Connection connection;

    public AlumnoDao() {
        connection = DbUtil.getConnection();
    }

    public void addAlumno(Alumno alumno) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO alumnos(nombres,apellidos,dni,telefono) VALUES (?, ?, ?, ? )");
            preparedStatement.setString(1, alumno.getNombres());
            preparedStatement.setString(2, alumno.getApellidos());
            preparedStatement.setInt(3, alumno.getDni());
            preparedStatement.setInt(4, alumno.getTelefono());
            preparedStatement.executeUpdate();

        } catch(SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteAlumno(int id) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM alumnos WHERE id=?");
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();

        } catch(SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateAlumno(Alumno alumno) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE alumnos SET nombres=?, apellidos=?, dni=?, telefono=? WHERE id=?");
            preparedStatement.setString(1, alumno.getNombres());
            preparedStatement.setString(2, alumno.getApellidos());
            preparedStatement.setInt(4, alumno.getDni());
            preparedStatement.setInt(5, alumno.getTelefono());
            preparedStatement.executeUpdate();

        } catch(SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Alumno> getAllAlumnos() {
        List<Alumno> alumnos = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM alumnos");
            while(rs.next()) {
                Alumno alumno = new Alumno();
                alumno.setId(rs.getInt("id"));
                alumno.setNombres(rs.getString("nombres"));
                alumno.setApellidos(rs.getString("apellidos"));
                alumno.setDni(rs.getInt("dni"));
                alumno.setTelefono(rs.getInt("telefono"));
                alumnos.add(alumno);
            }
        } catch(SQLException e) {
            e.printStackTrace();
        }

        return alumnos;
    }

    public Alumno getAlumnoById(int userId) {
        Alumno alumno = new Alumno();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM users WHERE id=?");
            preparedStatement.setInt(1, userId);
            ResultSet rs = preparedStatement.executeQuery();
            if(rs.next()) {
                alumno.setId(rs.getInt("id"));
                alumno.setNombres(rs.getString("nombres"));
                alumno.setApellidos(rs.getString("apellidos"));
                alumno.setDni(rs.getInt("dni"));
                alumno.setTelefono(rs.getInt("telefono"));
            }
        } catch(SQLException e) {
            e.printStackTrace();
        }

        return alumno;
    }
}
