SET JAVA_HOME ="C:\Program Files\Java\jdk-21\bin"
SET PATH = %JAVA_HOME%;%PATH%
SET CLASSPATH=%JAVA_HOME%
SET JFLEX_HOME= C:\Users\henry\Documents\jflex-1.9.1\lib
cd C:\Users\henry\Documents\OLC1_Proyecto1_202004071\Proyecto1\src\main\java\Analizadores
java -jar %JFLEX_HOME%\jflex-full-1.9.1.jar Lexico.flex
pause