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
        html.append("  width: 80%;\n");
        html.append("  margin: 20px auto;\n");
        html.append("  font-family: Arial, sans-serif;\n");
        html.append("}\n");
        html.append("th, td {\n");
        html.append("  text-align: left;\n");
        html.append("  padding: 8px;\n");
        html.append("  border: 1px solid #ddd;\n");
        html.append("}\n");
        html.append("th {\n");
        html.append("  background-color: #4CAF50;\n");
        html.append("  color: white;\n");
        html.append("}\n");
        html.append("tr:nth-child(even) { background-color: #f2f2f2; }\n");
        html.append("</style>\n");
        html.append("</head>\n");
        html.append("<body>\n");
        html.append("<h1>Tabla de Simbolos</h1>\n");
        html.append("<table border=\"1\">\n");
        html.append("<tr>\n");
        html.append("<th>Numero</th>\n");
        html.append("<th>Nombre</th>\n");
        html.append("<th>Tipo</th>\n");
        html.append("<th>Valor</th>\n");
        html.append("<th>Linea</th>\n");
        html.append("<th>Columna</th>\n");
        html.append("</tr>\n");

        for (TablaSimbolos tablaSimbolos : lista) {
            html.append("<tr>\n");
            html.append("<td>").append(tablaSimbolos.getNumero()).append("</td>\n");
            html.append("<td>").append(tablaSimbolos.getNombre()).append("</td>\n");
            html.append("<td>").append(tablaSimbolos.getTipo()).append("</td>\n");
            html.append("<td>").append(tablaSimbolos.getValor()).append("</td>\n");
            html.append("<td>").append(tablaSimbolos.getLinea()).append("</td>\n");
            html.append("<td>").append(tablaSimbolos.getColumna()).append("</td>\n");
            html.append("</tr>\n");
        }

        html.append("</table>\n");
        html.append("</body>\n");
        html.append("</html>\n");

        return html.toString();
    }

    public static void crearHTML(String textoHtml) {
        String ruta = "./Reportes/TablaSimbolos.html";
        String contenido = textoHtml;
        File file = new File(ruta);
        try {
            FileWriter fw = new FileWriter(file);
            BufferedWriter bw = new BufferedWriter(fw);
            bw.write(contenido);
            bw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
