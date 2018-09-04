package com.admin;

import com.admin.dao.MateriaDao;
import com.admin.model.Materia;

public class App {
    public static void main(String[] args) {
        MateriaDao materiadao = new MateriaDao();

        System.out.println("Lista Materias Alumno 1:");
        for (Materia iter : materiadao.getMateriasAprobadasFromAlumno(1)) {
            System.out.println(iter.getNombre());
        }
    }
}
