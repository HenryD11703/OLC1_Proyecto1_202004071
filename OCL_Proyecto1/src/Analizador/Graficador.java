/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Analizador;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;

/**
 *
 * @author henry
 */
public class Graficador {
    public void crearGraphBarra(ArrayList<Integer> valores, String titulo, ArrayList<String> etiquetas) throws IOException{
        DefaultCategoryDataset dataset = new DefaultCategoryDataset();
        for (int i = 0; i < valores.size(); i++) {
            dataset.addValue(valores.get(i), "", etiquetas.get(i));
        }
        JFreeChart chart = ChartFactory.createBarChart(titulo, "Categorías", "Valor", dataset, PlotOrientation.VERTICAL, true, true, false);
        CategoryPlot plot = chart.getCategoryPlot();
        plot.setRangeGridlinePaint(java.awt.Color.lightGray);

        File imgDir = new File("./imgGraficas");
        if (!imgDir.exists()) imgDir.mkdirs();
        File chartFile = new File(imgDir, "chart.jpeg");
        ChartUtilities.saveChartAsJPEG(chartFile, chart, 500, 300);
    }
}