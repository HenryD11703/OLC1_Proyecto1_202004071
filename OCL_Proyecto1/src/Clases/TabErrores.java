package Clases;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

public class TabErrores {
    private int numero;
    private String tipo;
    private String descripcion;
    private int linea;
    private int columna;

    public TabErrores(int numero, String tipo, String descripcion, int linea, int columna) {
        this.numero = numero;
        this.tipo = tipo;
        this.descripcion = descripcion;
        this.linea = linea;
        this.columna = columna;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String Tipo) {
        this.tipo = Tipo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.descripcion = Descripcion;
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

    public static String reporteHTMLE(ArrayList<TabErrores> lista) {
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
        html.append("<h1>Tabla de Errores</h1>\n");
        html.append("<table border=\"1\">\n");
        html.append("<tr>\n");
        html.append("<th>Numero</th>\n");
        html.append("<th>Tipo</th>\n");
        html.append("<th>Descripcion</th>\n");
        html.append("<th>Linea</th>\n");
        html.append("<th>Columna</th>\n");
        html.append("</tr>\n");

        for (TabErrores tabErrores : lista) {
            html.append("<tr>\n");
            html.append("<td>").append(tabErrores.getNumero()).append("</td>\n");
            html.append("<td>").append(tabErrores.getTipo()).append("</td>\n");
            html.append("<td>").append(tabErrores.getDescripcion()).append("</td>\n");
            html.append("<td>").append(tabErrores.getLinea()).append("</td>\n");
            html.append("<td>").append(tabErrores.getColumna()).append("</td>\n");
            html.append("</tr>\n");
        }

        html.append("</table>\n");
        html.append("</body>\n");
        html.append("</html>\n");

        return html.toString();
    }

    public static void crearHTMLE(String textoHtml) {
        String ruta = "./Reportes/TablaErrores.html";
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
