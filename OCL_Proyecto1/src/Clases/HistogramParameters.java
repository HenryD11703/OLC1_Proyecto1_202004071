package Clases;

import java.util.ArrayList;

public class HistogramParameters {
    private String titulo;
    private ArrayList<Double> valores;

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setValores(ArrayList<Double> valores) {
        this.valores = valores;
    }

    public ArrayList<Double> getValores() {
        return valores;
    }

}
