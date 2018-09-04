package com.admin;

import com.admin.dao.MateriaDao;
import com.admin.model.Materia;

import javax.swing.*;
import javax.swing.table.AbstractTableModel;
import java.util.ArrayList;

public class Administracion extends JFrame {
    private final static String[] header = {"#", "COD", "Materia"};

    private Administracion(ArrayList<String> al) {
        MyModel mm = new MyModel(al, header);
        JTable table = new JTable(mm);
        add(new JScrollPane(table));
        setSize(600, 400);
        setVisible(true);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
    }

    class MyModel extends AbstractTableModel {

        private ArrayList<String> al;
        private String[] header;

        MyModel(ArrayList<String> al, String[] header) {
            this.al = al;
            this.header = header;
        }

        public int getColumnCount() {
            return header.length;
        }
        public int getRowCount() {
            return al.size();
        }
        public Object getValueAt(int rowIndex, int columnIndex) {
            String[] token = al.get(rowIndex).split(",");
            return token[columnIndex];
        }
        public String getColumnName(int col) {
            return header[col];
        }
    }

    public static void main(String[] args) {
        ArrayList<String> al = new ArrayList<String>();
        MateriaDao materiadao = new MateriaDao();
        for (Materia iter : materiadao.getAllMaterias()) {
            al.add(iter.getId() + "," + iter.getCod() + "," + iter.getNombre());
        }
        new Administracion(al);
    }
}
