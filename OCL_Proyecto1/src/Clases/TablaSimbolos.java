/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

/**
 *
 * @author henry
 */
public class TablaSimbolos {
    private int numero;
    private String nombre;
    private String Tipo;
    private Object valor;
    private int linea;
    private int columna;

    public TablaSimbolos(int numero, String nombre, String Tipo, Object valor, int linea, int columna) {
        this.numero = numero;
        this.nombre = nombre;
        this.Tipo = Tipo;
        this.valor = valor;
        this.linea = linea;
        this.columna = columna;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTipo() {
        return Tipo;
    }

    public void setTipo(String Tipo) {
        this.Tipo = Tipo;
    }

    public Object getValor() {
        return valor;
    }

    public void setValor(Object valor) {
        this.valor = valor;
    }

    public int getLinea() {
        return linea;
    }

    public void setLinea(int linea) {
        this.linea = linea;
    }

    public int getColumna() {
        return columna;
    }

    public void setColumna(int columna) {
        this.columna = columna;
    }

    public static String reporteHTML(ArrayList<TablaSimbolos> lista) {
        StringBuilder html = new StringBuilder();

    html.append("<html>\n");
    html.append("<head>\n");
    html.append("<style>\n");
    html.append("table { \n");
    html.append("  border-collapse: collapse;\n");
    html.append("  width: 80%; /* Adjust width as needed */\n");
    html.append("  margin: 20px auto; /* Center the table */\n");
    html.append("}\n");
    html.append("th, td {\n");
    html.append("  text-align: left;\n");
    html.append("  padding: 8px;\n");
    html.append("  border: 1px solid #ddd;\n");
    html.append("}\n");
    html.append("tr:nth-child(even) { background-color: #f2f2f2; }\n");
    html.append("</style>\n");
    html.append("</head>\n");
    html.append("<body>\n");
    html.append("<h1>Tabla de Simbolos</h1>\n"); // Agregamos un título a la tabla
    for (TablaSimbolos tablaSimbolos : lista) {
        html.append("<table border=\"1\">\n");
        html.append("<tr>\n");
        html.append("<td>Numero</td>\n");
        html.append("<td>Nombre</td>\n");
        html.append("<td>Tipo</td>\n");
        html.append("<td>Valor</td>\n");
        html.append("<td>Linea</td>\n");
        html.append("<td>Columna</td>\n");
        html.append("</tr>\n");
        html.append("<tr>\n");
        html.append("<td>").append(tablaSimbolos.getNumero()).append("</td>\n");
        html.append("<td>").append(tablaSimbolos.getNombre()).append("</td>\n");
        html.append("<td>").append(tablaSimbolos.getTipo()).append("</td>\n");
        html.append("<td>").append(tablaSimbolos.getValor()).append("</td>\n");
        html.append("<td>").append(tablaSimbolos.getLinea()).append("</td>\n");
        html.append("<td>").append(tablaSimbolos.getColumna()).append("</td>\n");
        html.append("</tr>\n");
        html.append("</table>\n");
    }

        return html.toString();
    }

    public static void CrearHTML(String textoHtml){
        String ruta = "./Reportes/TablaSimbolos.html";
    String contenido = textoHtml;
    File file = new File(ruta);
    if (!file.exists()) {
        try {
            file.createNewFile();
            FileWriter fw = new FileWriter(file);
            BufferedWriter bw = new BufferedWriter(fw);
            bw.write(contenido);
            bw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}


}
