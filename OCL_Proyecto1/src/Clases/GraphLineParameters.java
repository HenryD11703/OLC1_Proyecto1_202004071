package Clases;

import java.util.ArrayList;

public class GraphLineParameters {
    private String titulo;
    private String tituloX;
    private String tituloY; 
    private ArrayList<Double> ejeY;
    private ArrayList<String> ejeX;  

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

    public void setEjeY(ArrayList<Double> ejeY) {
        this.ejeY = ejeY;
    }

    public ArrayList<Double> getEjeY() {
        return ejeY;
    }

    public void setEjeX(ArrayList<String> ejeX) {
        this.ejeX = ejeX;
    }

    public ArrayList<String> getEjeX() {
        return ejeX;
    }
    
}
