package Clases;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;

public class Imagenes {

    public static void clearImagePath() throws IOException {
        String rutaCarpeta = "./imgGraficas";
        // Obtener todos los archivos de la carpeta
        File[] archivos = new File(rutaCarpeta).listFiles();

        // Recorrer los archivos
        for (File archivo : archivos) {
            // Si el archivo es una imagen, eliminarlo
            if (esImagen(archivo)) {
                Files.delete(Paths.get(archivo.getAbsolutePath()));
            }
        }

        System.out.println("Las imágenes se han eliminado correctamente.");
    }

    private static boolean esImagen(File archivo) {
        // Obtener la extensión del archivo
        String extension = archivo.getName().substring(archivo.getName().lastIndexOf(".") + 1);

        // Lista de extensiones de imágenes
        String[] extensionesImagenes = {"jpg", "jpeg", "png", "bmp", "gif"};

        // Devolver true si la extensión del archivo está en la lista
        return Arrays.asList(extensionesImagenes).contains(extension.toLowerCase());
    }   

    public static ArrayList<File> getImages() {
        String rutaCarpeta = "./imgGraficas";
        File[] archivos = new File(rutaCarpeta).listFiles();
        ArrayList<File> imagenes = new ArrayList<>();
    
        for (File archivo : archivos) {
            if (esImagen(archivo)) {
                imagenes.add(archivo);
            }
        }
    
        return imagenes;
    }
     

}
