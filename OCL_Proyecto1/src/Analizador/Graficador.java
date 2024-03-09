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
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.data.statistics.HistogramDataset;
import org.jfree.data.xy.XYSeries;
import org.jfree.data.xy.XYSeriesCollection;

/**
 *
 * @author henry
 */
public class Graficador {

    public static void crearGraphBarra(ArrayList<Double> valores, String titulo, ArrayList<String> etiquetas, String titulox, String tituloy) throws IOException{
        DefaultCategoryDataset dataset = new DefaultCategoryDataset();
        for (int i = 0; i < valores.size(); i++) {
            dataset.addValue(valores.get(i), "", etiquetas.get(i));
        }
        JFreeChart chart = ChartFactory.createBarChart(titulo, titulox, tituloy, dataset, PlotOrientation.VERTICAL, true, true, false);
        CategoryPlot plot = chart.getCategoryPlot();
        plot.setRangeGridlinePaint(java.awt.Color.lightGray);

        File imgDir = new File("./imgGraficas");
        if (!imgDir.exists()) imgDir.mkdirs();
        File chartFile = new File(imgDir, titulo + ".jpeg");
        ChartUtilities.saveChartAsJPEG(chartFile, chart, 579, 562);
    }

    public void crearGraphPie(ArrayList<Double> valores, String titulo, ArrayList<String> etiquetas) throws IOException{
       DefaultPieDataset dataset = new DefaultPieDataset();
        for (int i = 0; i < valores.size(); i++) {
            dataset.setValue(etiquetas.get(i), valores.get(i));
        }
        JFreeChart chart = ChartFactory.createPieChart(titulo, dataset, true, true, false);
        File imgDir = new File("./imgGraficas");
        if (!imgDir.exists()) imgDir.mkdirs();
        File chartFile = new File(imgDir, titulo + ".jpeg");
        ChartUtilities.saveChartAsJPEG(chartFile, chart, 579, 562);
    }

    public void crearGraphLinea(ArrayList<Double> valores, String titulo, String tituloX , String tituloY, ArrayList<String> etiquetas) throws IOException {
        DefaultCategoryDataset dataset = new DefaultCategoryDataset();
        for (int i = 0; i < valores.size(); i++) {
            dataset.addValue(valores.get(i), titulo, etiquetas.get(i));
        }
        JFreeChart chart = ChartFactory.createLineChart(titulo, tituloX, tituloY, dataset, PlotOrientation.VERTICAL, true, true, false);
        File imgDir = new File("./imgGraficas");
        if (!imgDir.exists()) imgDir.mkdirs();
        File chartFile = new File(imgDir, titulo + ".jpeg");
        ChartUtilities.saveChartAsJPEG(chartFile, chart, 579, 562);
    }

    public void crearHistogram(String titulo, ArrayList<Double> valores) throws IOException {
        HistogramDataset dataset = new HistogramDataset();
        double[] valueArray = new double[valores.size()];
        for (int i = 0; i < valores.size(); i++) {
            valueArray[i] = valores.get(i);
        }
        dataset.addSeries("Histogram", valueArray, 10);
        JFreeChart chart = ChartFactory.createHistogram(titulo, null, null, dataset, PlotOrientation.VERTICAL, false, true, false);
        File imgDir = new File("./imgGraficas");
        if (!imgDir.exists()) imgDir.mkdirs();
        File chartFile = new File(imgDir, titulo + ".jpeg");
        ChartUtilities.saveChartAsJPEG(chartFile, chart, 579, 562);
    }


    
}
 