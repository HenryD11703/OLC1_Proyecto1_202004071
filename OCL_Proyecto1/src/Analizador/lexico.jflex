package Analizador;

// importaciones si fuese necesario
import java_cup.runtime.Symbol;

%%

// codigo de usuario
%{

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
ENTEROS = [0-9]+
STRINGT = [\"][^\"\n]+[\"] // para que acepte cadenas de texto dentro de comillas
DECIMAL = [0-9]+("."[  |0-9]+)? // para que acepte numeros decimales
// para que reconozca comentarios de una linea que empiecen con !
COMENTARIOS = "!"([^\r\n]*)

// para que reconozca comentarios que empiezan con <! y terminan con !>
COMENMULTI = "<![^!]*!>"



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
{TK_PROGRAM}    {return new Symbol(sym.TK_PROGRAM,yyline,yycolumn,yytext());}
{TK_VAR}    {return new Symbol(sym.TK_VAR,yyline,yycolumn,yytext());}
{TK_CADENA}    {return new Symbol(sym.TK_CADENA,yyline,yycolumn,yytext());}
{TK_CHAR}    {return new Symbol(sym.TK_CHAR,yyline,yycolumn,yytext());}
{TK_END}    {return new Symbol(sym.TK_END,yyline,yycolumn,yytext());}
{TK_ARR}    {return new Symbol(sym.TK_ARR,yyline,yycolumn,yytext());}
{TK_SUM}    {return new Symbol(sym.TK_SUM,yyline,yycolumn,yytext());}
{TK_RES}    {return new Symbol(sym.TK_RES,yyline,yycolumn,yytext());}
{TK_MUL}    {return new Symbol(sym.TK_MUL,yyline,yycolumn,yytext());}
{TK_DIV}    {return new Symbol(sym.TK_DIV,yyline,yycolumn,yytext());}
{TK_MOD}    {return new Symbol(sym.TK_MOD,yyline,yycolumn,yytext());}
{TK_MEDIA}    {return new Symbol(sym.TK_MEDIA,yyline,yycolumn,yytext());}
{TK_MEDIANA}    {return new Symbol(sym.TK_MEDIANA,yyline,yycolumn,yytext());}
{TK_MODA}    {return new Symbol(sym.TK_MODA,yyline,yycolumn,yytext());}
{TK_VARIANZA}    {return new Symbol(sym.TK_VARIANZA,yyline,yycolumn,yytext());}
{TK_MAX}    {return new Symbol(sym.TK_MAX,yyline,yycolumn,yytext());}
{TK_MIN}    {return new Symbol(sym.TK_MIN,yyline,yycolumn,yytext());}
{TK_CONSOLE}    {return new Symbol(sym.TK_CONSOLE,yyline,yycolumn,yytext());}
{TK_PRINT}    {return new Symbol(sym.TK_PRINT,yyline,yycolumn,yytext());}
{TK_COLUMN}    {return new Symbol(sym.TK_COLUMN,yyline,yycolumn,yytext());}
{TK_GRAPHBAR}    {return new Symbol(sym.TK_GRAPHBAR,yyline,yycolumn,yytext());}
{TK_GRAPHPIE}    {return new Symbol(sym.TK_GRAPHPIE,yyline,yycolumn,yytext());}
{TK_GRAPHLINE}    {return new Symbol(sym.TK_GRAPHLINE,yyline,yycolumn,yytext());}
{TK_HISTOGRAM}    {return new Symbol(sym.TK_HISTOGRAM,yyline,yycolumn,yytext());}
{TK_TITULO}    {return new Symbol(sym.TK_TITULO,yyline,yycolumn,yytext());}
{TK_EJEX}    {return new Symbol(sym.TK_EJEX,yyline,yycolumn,yytext());}
{TK_EJEY}    {return new Symbol(sym.TK_EJEY,yyline,yycolumn,yytext());}
{TK_TITULOX}    {return new Symbol(sym.TK_TITULOX,yyline,yycolumn,yytext());}
{TK_TITULOY}    {return new Symbol(sym.TK_TITULOY,yyline,yycolumn,yytext());}
{TK_EXEC}    {return new Symbol(sym.TK_EXEC,yyline,yycolumn,yytext());}
{TK_VALUES}    {return new Symbol(sym.TK_VALUES,yyline,yycolumn,yytext());}
{TK_LABEL}    {return new Symbol(sym.TK_LABEL,yyline,yycolumn,yytext());}
{STRINGT}    {return new Symbol(sym.STRINGT,yyline,yycolumn,yytext());}

{DOSP}      {return new Symbol(sym.DOSP,yyline,yycolumn,yytext());}
{MENOS}     {return new Symbol(sym.MENOS,yyline,yycolumn,yytext());}
{MENORQ}    {return new Symbol(sym.MENORQ,yyline,yycolumn,yytext());}
{MAYORQ}    {return new Symbol(sym.MAYORQ,yyline,yycolumn,yytext());}
{PYCOMA}    {return new Symbol(sym.PYCOMA,yyline,yycolumn,yytext());}
{CORA}      {return new Symbol(sym.CORA,yyline,yycolumn,yytext());}
{CORC}      {return new Symbol(sym.CORC,yyline,yycolumn,yytext());}
{ARRB}      {return new Symbol(sym.ARRB,yyline,yycolumn,yytext());}
{PARA}      {return new Symbol(sym.PARA,yyline,yycolumn,yytext());}
{PARC}      {return new Symbol(sym.PARC,yyline,yycolumn,yytext());}
{COMA}      {return new Symbol(sym.COMA,yyline,yycolumn,yytext());}
{IGUAL}     {return new Symbol(sym.IGUAL,yyline,yycolumn,yytext());}
{NOMBRES}   {return new Symbol(sym.NOMBRES,yyline,yycolumn,yytext());}
{ENTEROS}   {return new Symbol(sym.ENTEROS,yyline,yycolumn,yytext());}
{DECIMAL}   {return new Symbol(sym.DECIMAL,yyline,yycolumn,yytext());}
{ESPACIOS}  {}
{COMENTARIOS} {}
{COMENMULTI} {}








