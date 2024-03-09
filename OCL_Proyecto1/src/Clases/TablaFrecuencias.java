package Clases;

import java.util.ArrayList;
import java.util.Collections;

public class TablaFrecuencias {
    private String titulo;
    private ArrayList<Double> valores;
    private ArrayList<Integer> fb;
    private ArrayList<Integer> fa;
    private ArrayList<Double> fr;

    public TablaFrecuencias() {
        this.titulo = "";
        this.valores = new ArrayList<>();
        this.fb = new ArrayList<>();
        this.fa = new ArrayList<>();
        this.fr = new ArrayList<>();
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public void setValores(ArrayList<Double> valores) {
        this.valores = valores;
    }

    public void calcularFrecuencias() {
        // Calcular frecuencias absolutas brutas
        for (Double valor : valores) {
          fb.add(Collections.frequency(valores, valor));
        }
    
        // Calcular frecuencias absolutas acumuladas
        fa.add(fb.get(0));
        for (int i = 1; i < fb.size(); i++) {
          fa.add(fa.get(i - 1) + fb.get(i));
        }
    
        // Calcular frecuencias relativas
        for (int i = 0; i < fb.size(); i++) {
          fr.add((double) fb.get(i) / valores.size());
        }
      }
    
      public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("===============================\n");
        sb.append(titulo).append("\n");
        sb.append("===============================\n");
        sb.append("Valores | Fb | Fa | Fr\n");
        sb.append("------- | -- | -- | --\n");
        for (int i = 0; i < valores.size(); i++) {
          sb.append(String.format("%6.2f | %2d | %2d | %6.2f%%\n",
              valores.get(i), fb.get(i), fa.get(i), fr.get(i) * 100));
        }
        sb.append("===============================\n");
        return sb.toString();
      }
    }
 
