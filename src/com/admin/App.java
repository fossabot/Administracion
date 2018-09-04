package com.admin;

import com.admin.dao.AlumnoDao;
import com.admin.dao.MateriaDao;
import com.admin.model.Alumno;
import com.admin.model.Materia;

public class App {
    public static void main(String[] args) {
        AlumnoDao alumnodao = new AlumnoDao();
        MateriaDao materiadao = new MateriaDao();

        System.out.println("Lista Alumnos:");
        for (Alumno iter : alumnodao.getAllAlumnos()) {
            System.out.println(iter);
        }

        System.out.println("Lista Materias:");
        for (Materia iter : materiadao.getAllMaterias()) {
            System.out.println(iter);
        }
    }
}
