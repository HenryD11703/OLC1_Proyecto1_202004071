package Analizador;

// importaciones si fuese necesario
import java_cup.runtime.Symbol;

%%

// codigo de usuario
%{
    String cadena = "";
%}

%init{ 
    yyline = 1; 
    yycolumn = 1; 
%init} 

// caracteristicas propias de jflex
%cup
%class scanner
%public
%line
%char
%column
%full
%ignorecase

%state CADENA

// simbolos
DOSP = ":"
MENORQ = "<"
MAYORQ = ">"
PYCOMA = ";"
COMEN = "!"
CORA = "["
CORC = "]"
ARRB = "@"
PARA = "("
PARC = ")"
COMA =","
IGUAL = "="
ESPACIOS = [\ \r\t\f\n]+
NOMBRES = [a-zA-Z_][a-zA-Z0-9_]*
ENTEROS = [0-9]+
DECIMAL = [0-9]+("."[  |0-9]+)?


// palabras reservadas
TK_PROGRAM = "program"
TK_ENDPROGRAM = "end program"
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
TK_label = "label"

%%
<YYINITIAL> {TK_EJEMPLO}    {return new Symbol(sym.TK_EJEMPLO,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_SYSTEM}     {return new Symbol(sym.TK_SYSTEM,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_PRINT}      {return new Symbol(sym.TK_PRINT,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_LINE}       {return new Symbol(sym.TK_LINE,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_CONCAT}     {return new Symbol(sym.TK_CONCAT,yyline,yycolumn,yytext());}

<YYINITIAL> {MENOR}      {return new Symbol(sym.MENOR,yyline,yycolumn,yytext());}
<YYINITIAL> {MAYOR}      {return new Symbol(sym.MAYOR,yyline,yycolumn,yytext());}
<YYINITIAL> {LLAVE1}     {return new Symbol(sym.LLAVE1,yyline,yycolumn,yytext());}
<YYINITIAL> {LLAVE2}     {return new Symbol(sym.LLAVE2,yyline,yycolumn,yytext());}
<YYINITIAL> {PAR1}       {return new Symbol(sym.PAR1,yyline,yycolumn,yytext());}
<YYINITIAL> {PAR2}       {return new Symbol(sym.PAR2,yyline,yycolumn,yytext());}
<YYINITIAL> {DIV}        {return new Symbol(sym.DIV,yyline,yycolumn,yytext());}
<YYINITIAL> {PUNTO}      {return new Symbol(sym.PUNTO,yyline,yycolumn,yytext());}
<YYINITIAL> {ENTEROS}    {return new Symbol(sym.ENTEROS,yyline,yycolumn,yytext());}
<YYINITIAL> {FINCADENA}    {return new Symbol(sym.FINCADENA,yyline,yycolumn,yytext());}
<YYINITIAL> {COMA}    {return new Symbol(sym.COMA,yyline,yycolumn,yytext());}

<YYINITIAL> {BLANCOS}    {}

<YYINITIAL> [\"]         {yybegin(CADENA);cadena="";}

<CADENA>    {
            [\"]         {String tmp=cadena; cadena=""; yybegin(YYINITIAL);
                         return new Symbol(sym.CADENA,yyline,yycolumn,tmp);}
            [^\"]        {cadena+=yytext();}
}










