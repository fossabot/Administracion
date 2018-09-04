package com.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.admin.model.Materia;
import com.admin.util.DbUtil;

public class MateriaDao {

    private Connection connection;

    public MateriaDao() {
        connection = DbUtil.getConnection();
    }

    public void addMateria(Materia materia) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO materias(nombre,cod) VALUES (?, ?)");
            preparedStatement.setString(1, materia.getNombre());
            preparedStatement.setString(3, materia.getCod());
            preparedStatement.executeUpdate();

        } catch(SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteMateria(int id) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM materias WHERE id=?");
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();

        } catch(SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateMateria(Materia materia) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE materias SET nombre=?, cod=? WHERE id=?");
            preparedStatement.setString(1, materia.getNombre());
            preparedStatement.setString(4, materia.getCod());
            preparedStatement.executeUpdate();

        } catch(SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Materia> getAllMaterias() {
        List<Materia> materias = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM materias");
            while(rs.next()) {
                Materia materia = new Materia();
                materia.setId(rs.getInt("id"));
                materia.setNombre(rs.getString("nombre"));
                materia.setCod(rs.getString("cod"));
                materias.add(materia);
            }
        } catch(SQLException e) {
            e.printStackTrace();
        }

        return materias;
    }

    public Materia getMateriaById(int userId) {
        Materia materia = new Materia();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM materias WHERE id=?");
            preparedStatement.setInt(1, userId);
            ResultSet rs = preparedStatement.executeQuery();
            if(rs.next()) {
                materia.setId(rs.getInt("id"));
                materia.setNombre(rs.getString("nombre"));
                materia.setCod(rs.getString("cod"));
            }
        } catch(SQLException e) {
            e.printStackTrace();
        }

        return materia;
    }
}
