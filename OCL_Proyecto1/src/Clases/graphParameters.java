/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;

import java.util.ArrayList;

/**
 *
 * @author henry
 */
public class graphParameters {
    private ArrayList<String> ejeX;
    private ArrayList<Double> ejeY;
    private String titulo;
    private String tituloX;
    private String tituloY;

    public void setEjeX(ArrayList<String> ejeX) {
        this.ejeX = ejeX;
    }

    public ArrayList<String> getEjeX() {
        return ejeX;
    }

    public void setEjeY(ArrayList<Double> ejeY) {
        this.ejeY = ejeY;
    }

    public ArrayList<Double> getEjeY() {
        return ejeY;
    }
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTituloX(String tituloX) {
        this.tituloX = tituloX;
    }

    public String getTituloX() {
        return tituloX;
    }

    public void setTituloY(String tituloY) {
        this.tituloY = tituloY;
    }

    public String getTituloY() {
        return tituloY;
    }


}
