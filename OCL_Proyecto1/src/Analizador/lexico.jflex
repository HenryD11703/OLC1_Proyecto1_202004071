package Analizador;

// importaciones si fuese necesario
import java_cup.runtime.Symbol;
import java.util.ArrayList;
import Clases.TablaTokens;

%%

// codigo de usuario
%{
    public ArrayList<TablaTokens> Reportetokens = new ArrayList<TablaTokens>();
    int contadorTokens = 1;
%}

%init{ 
    yyline = 1; 
    yycolumn = 1; 
%init} 



// caracteristicas propias de jflex
%cup
%class Scanner
%public
%line
%char
%unicode
%column
%ignorecase // para que no sea sensible a mayusculas y minusculas

%state CADENA

// simbolos
DOSP = ":"
MENORQ = "<"
MAYORQ = ">"
PYCOMA = ";"
CORA = "["
CORC = "]"
ARRB = "@"
PARA = "("
PARC = ")"
COMA =","
IGUAL = "="
MENOS = "-"
ESPACIOS = [\ \r\t\f\t\n]+ // para que ignore los espacios
NOMBRES = [a-zA-Z][a-zA-Z0-9_]* // para que acepte nombres de variables
ENTEROS = [-+]?[0-9]+
STRINGT = [\"][^\"\n]*[\"] // para que acepte cadenas de texto dentro de comillas
DECIMAL = [-+]?[0-9]+("."[  |0-9]+)? // para que acepte numeros decimales
// para que reconozca comentarios de una linea que empiecen con !
COMENTARIOS = "!"([^\r\n]*)
// para que reconozca comentarios de varias lineas dentro de <! y !>
COMENMULTI = "<!"([^!]|"!"[^>])*"!>"




// palabras reservadas
TK_PROGRAM = "program"
TK_VAR = "var"
TK_CADENA = "double"
TK_CHAR = "char[]"
TK_END = "end"
TK_ARR = "arr"
TK_SUM = "sum"
TK_RES = "res"
TK_MUL = "mul"
TK_DIV = "div"
TK_MOD = "mod"
TK_MEDIA = "media"
TK_MEDIANA = "mediana"
TK_MODA = "moda"
TK_VARIANZA = "varianza"
TK_MAX = "max"
TK_MIN = "min"
TK_CONSOLE = "console"
TK_PRINT = "print"
TK_COLUMN = "column"
TK_GRAPHBAR = "graphbar"
TK_GRAPHPIE = "graphpie"
TK_GRAPHLINE = "graphline"
TK_HISTOGRAM = "histogram"



TK_TITULO = "titulo"
TK_EJEX = "ejex"
TK_EJEY = "ejey"
TK_TITULOX = "titulox"
TK_TITULOY = "tituloy"
TK_EXEC = "exec"
TK_VALUES = "values"
TK_LABEL = "label"

%% //creacion de los tokens
{TK_PROGRAM}    {Symbol symbol = new Symbol(sym.TK_PROGRAM,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_PROGRAM", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_VAR}        {Symbol symbol = new Symbol(sym.TK_VAR,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_VAR", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_CADENA}     {Symbol symbol = new Symbol(sym.TK_CADENA,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_CADENA", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_CHAR}       {Symbol symbol = new Symbol(sym.TK_CHAR,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_CHAR", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_END}        {Symbol symbol = new Symbol(sym.TK_END,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_END", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_ARR}        {Symbol symbol = new Symbol(sym.TK_ARR,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_ARR", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_SUM}        {Symbol symbol = new Symbol(sym.TK_SUM,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_SUM", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_RES}        {Symbol symbol = new Symbol(sym.TK_RES,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_RES", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_MUL}        {Symbol symbol = new Symbol(sym.TK_MUL,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_MUL", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_DIV}        {Symbol symbol = new Symbol(sym.TK_DIV,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_DIV", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_MOD}        {Symbol symbol = new Symbol(sym.TK_MOD,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_MOD", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_MEDIA}      {Symbol symbol = new Symbol(sym.TK_MEDIA,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_MEDIA", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_MEDIANA}    {Symbol symbol = new Symbol(sym.TK_MEDIANA,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_MEDIANA", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_MODA}       {Symbol symbol = new Symbol(sym.TK_MODA,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_MODA", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_VARIANZA}   {Symbol symbol = new Symbol(sym.TK_VARIANZA,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_VARIANZA", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_MAX}        {Symbol symbol = new Symbol(sym.TK_MAX,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_MAX", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_MIN}        {Symbol symbol = new Symbol(sym.TK_MIN,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_MIN", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_CONSOLE}    {Symbol symbol = new Symbol(sym.TK_CONSOLE,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_CONSOLE", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_PRINT}      {Symbol symbol = new Symbol(sym.TK_PRINT,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_PRINT", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_COLUMN}     {Symbol symbol = new Symbol(sym.TK_COLUMN,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_COLUMN", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_GRAPHBAR}   {Symbol symbol = new Symbol(sym.TK_GRAPHBAR,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_GRAPHBAR", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_GRAPHPIE}   {Symbol symbol = new Symbol(sym.TK_GRAPHPIE,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_GRAPHPIE", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_GRAPHLINE}  {Symbol symbol = new Symbol(sym.TK_GRAPHLINE,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_GRAPHLINE", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_HISTOGRAM}  {Symbol symbol = new Symbol(sym.TK_HISTOGRAM,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_HISTOGRAM", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_TITULO}     {Symbol symbol = new Symbol(sym.TK_TITULO,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_TITULO", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_EJEX}       {Symbol symbol = new Symbol(sym.TK_EJEX,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_EJEX", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_EJEY}       {Symbol symbol = new Symbol(sym.TK_EJEY,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_EJEY", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_TITULOX}    {Symbol symbol = new Symbol(sym.TK_TITULOX,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_TITULOX", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_TITULOY}    {Symbol symbol = new Symbol(sym.TK_TITULOY,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_TITULOY", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_EXEC}       {Symbol symbol = new Symbol(sym.TK_EXEC,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_EXEC", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_VALUES}     {Symbol symbol = new Symbol(sym.TK_VALUES,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_VALUES", yyline,yycolumn)); contadorTokens++; return symbol;}
{TK_LABEL}      {Symbol symbol = new Symbol(sym.TK_LABEL,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "TK_LABEL", yyline,yycolumn)); contadorTokens++; return symbol;}

{DOSP}          {Symbol symbol = new Symbol(sym.DOSP,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "DOS PUNTOS", yyline,yycolumn)); contadorTokens++; return symbol;}
{MENORQ}        {Symbol symbol = new Symbol(sym.MENORQ,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "MENOR QUE", yyline,yycolumn)); contadorTokens++; return symbol;}
{MAYORQ}        {Symbol symbol = new Symbol(sym.MAYORQ,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "MAYOR QUE", yyline,yycolumn)); contadorTokens++; return symbol;}
{PYCOMA}        {Symbol symbol = new Symbol(sym.PYCOMA,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "PUNTO Y COMA", yyline,yycolumn)); contadorTokens++; return symbol;}
{CORA}          {Symbol symbol = new Symbol(sym.CORA,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "CORCHETE ABRE", yyline,yycolumn)); contadorTokens++; return symbol;}
{CORC}          {Symbol symbol = new Symbol(sym.CORC,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "CORCHETE CIERRA", yyline,yycolumn)); contadorTokens++; return symbol;}
{ARRB}          {Symbol symbol = new Symbol(sym.ARRB,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "ARROBA", yyline,yycolumn)); contadorTokens++; return symbol;}
{PARA}          {Symbol symbol = new Symbol(sym.PARA,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "PARENTESIS ABRE", yyline,yycolumn)); contadorTokens++; return symbol;}
{PARC}          {Symbol symbol = new Symbol(sym.PARC,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "PARENTESIS CIERRA", yyline,yycolumn)); contadorTokens++; return symbol;}
{COMA}          {Symbol symbol = new Symbol(sym.COMA,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "COMA", yyline,yycolumn)); contadorTokens++; return symbol;}
{IGUAL}         {Symbol symbol = new Symbol(sym.IGUAL,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "IGUAL", yyline,yycolumn)); contadorTokens++; return symbol;}
{MENOS}         {Symbol symbol = new Symbol(sym.MENOS,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "MENOS", yyline,yycolumn)); contadorTokens++; return symbol;}
{ESPACIOS}      {}
{NOMBRES}       {Symbol symbol = new Symbol(sym.NOMBRES,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "NOMBRE ID", yyline,yycolumn)); contadorTokens++; return symbol;}
{ENTEROS}       {Symbol symbol = new Symbol(sym.ENTEROS,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "NUMERO ENTERO", yyline,yycolumn)); contadorTokens++; return symbol;}

// Para que reconozca cadenas de texto y guarde el texto sin las comillas
{STRINGT} {
    String TextoR = yytext().substring(1, yytext().length() - 1);
    Symbol symbol = new Symbol(sym.STRINGT, yyline, yycolumn, TextoR);
    System.out.println("Token reconocido: " + symbol.value);
    Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "CADENA", yyline,yycolumn)); contadorTokens++; return symbol;
}
{DECIMAL}       {Symbol symbol = new Symbol(sym.DECIMAL,yyline,yycolumn,yytext()); System.out.println("Token reconocido: " + symbol.value); Reportetokens.add( new TablaTokens (contadorTokens, yytext() , "DECIMAL", yyline,yycolumn)); contadorTokens++; return symbol;}
{COMENTARIOS}   {}
{COMENMULTI}    {}
//El punto indica todo lo que no sea reconocido anteriormente
.       {
            System.err.println("Error léxico: Carácter no reconocido en la línea " + yyline + ", columna " + yycolumn);
            yycolumn++;
        }








