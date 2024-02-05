SET JAVA_HOME ="C:\Program Files\Java\jdk-21\bin"
SET PATH = %JAVA_HOME%;%PATH%
SET CLASSPATH=%JAVA_HOME%
cd C:\Users\henry\Documents\OLC1_Proyecto1_202004071\Proyecto1\src\main\java\Analizadores
java -jar C:\Users\henry\Documents\jflex-1.9.1\java-cup-bin-11b-20160615\java-cup-11b.jar -parser analisis_sintactico -symbols Simbolos Sintactico.cup
pause
