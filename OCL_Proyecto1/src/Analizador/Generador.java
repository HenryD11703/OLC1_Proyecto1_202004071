/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package Analizador;

import java.util.logging.Level;
import java.util.logging.Logger;
import jflex.exceptions.SilentExit;

/**
 *
 * @author henry
 */
public class Generador {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Generar();
    }
    public static void Generar(){
        try {
            String ruta="src/Analizador/";
            String Flex[] = {ruta + "lexico.jflex","-d",ruta};
            jflex.Main.generate(Flex);
            String Cup[] = {"-destdir", ruta,"-parser","parser",ruta+"sintactico.cup"};
            java_cup.Main.main(Cup);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    }
    
}
