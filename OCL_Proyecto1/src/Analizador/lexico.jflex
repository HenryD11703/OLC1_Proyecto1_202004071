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
TK_LABEL = "label"

%%
<YYINITIAL> {TK_PROGRAM}    {return new Symbol(sym.TK_PROGRAM,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_ENDPROGRAM}    {return new Symbol(sym.TK_ENDPROGRAM,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_VAR}    {return new Symbol(sym.TK_VAR,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_CADENA}    {return new Symbol(sym.TK_CADENA,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_CHAR}    {return new Symbol(sym.TK_CHAR,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_END}    {return new Symbol(sym.TK_END,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_ARR}    {return new Symbol(sym.TK_ARR,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_SUM}    {return new Symbol(sym.TK_SUM,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_RES}    {return new Symbol(sym.TK_RES,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_MUL}    {return new Symbol(sym.TK_MUL,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_DIV}    {return new Symbol(sym.TK_DIV,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_MOD}    {return new Symbol(sym.TK_MOD,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_MEDIA}    {return new Symbol(sym.TK_MEDIA,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_MEDIANA}    {return new Symbol(sym.TK_MEDIANA,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_MODA}    {return new Symbol(sym.TK_MODA,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_VARIANZA}    {return new Symbol(sym.TK_VARIANZA,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_MAX}    {return new Symbol(sym.TK_MAX,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_MIN}    {return new Symbol(sym.TK_MIN,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_CONSOLE}    {return new Symbol(sym.TK_CONSOLE,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_PRINT}    {return new Symbol(sym.TK_PRINT,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_COLUMN}    {return new Symbol(sym.TK_COLUMN,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_GRAPHBAR}    {return new Symbol(sym.TK_GRAPHBAR,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_GRAPHPIE}    {return new Symbol(sym.TK_GRAPHPIE,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_GRAPHLINE}    {return new Symbol(sym.TK_GRAPHLINE,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_HISTOGRAM}    {return new Symbol(sym.TK_HISTOGRAM,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_TITULO}    {return new Symbol(sym.TK_TITULO,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_EJEX}    {return new Symbol(sym.TK_EJEX,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_EJEY}    {return new Symbol(sym.TK_EJEY,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_TITULOX}    {return new Symbol(sym.TK_TITULOX,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_TITULOY}    {return new Symbol(sym.TK_TITULOY,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_EXEC}    {return new Symbol(sym.TK_EXEC,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_VALUES}    {return new Symbol(sym.TK_VALUES,yyline,yycolumn,yytext());}
<YYINITIAL> {TK_LABEL}    {return new Symbol(sym.TK_label,yyline,yycolumn,yytext());}

<YYINITIAL> {DOSP}      {return new Symbol(sym.DOSP,yyline,yycolumn,yytext());}
<YYINITIAL> {MENORQ}    {return new Symbol(sym.MENORQ,yyline,yycolumn,yytext());}
<YYINITIAL> {MAYORQ}    {return new Symbol(sym.MAYORQ,yyline,yycolumn,yytext());}
<YYINITIAL> {PYCOMA}    {return new Symbol(sym.PYCOMA,yyline,yycolumn,yytext());}
<YYINITIAL> {COMEN}     {return new Symbol(sym.COMEN,yyline,yycolumn,yytext());}
<YYINITIAL> {CORA}      {return new Symbol(sym.CORA,yyline,yycolumn,yytext());}
<YYINITIAL> {CORC}      {return new Symbol(sym.CORC,yyline,yycolumn,yytext());}
<YYINITIAL> {ARRB}      {return new Symbol(sym.ARRB,yyline,yycolumn,yytext());}
<YYINITIAL> {PARA}      {return new Symbol(sym.PARA,yyline,yycolumn,yytext());}
<YYINITIAL> {PARC}      {return new Symbol(sym.PARC,yyline,yycolumn,yytext());}
<YYINITIAL> {COMA}      {return new Symbol(sym.COMA,yyline,yycolumn,yytext());}
<YYINITIAL> {IGUAL}     {return new Symbol(sym.IGUAL,yyline,yycolumn,yytext());}
<YYINITIAL> {NOMBRES}   {return new Symbol(sym.NOMBRES,yyline,yycolumn,yytext());}
<YYINITIAL> {ENTEROS}   {return new Symbol(sym.ENTEROS,yyline,yycolumn,yytext());}
<YYINITIAL> {DECIMAL}   {return new Symbol(sym.DECIMAL,yyline,yycolumn,yytext());}
<YYINITIAL> {ESPACIOS}  {}


<YYINITIAL> [\"]         {yybegin(CADENA);cadena="";}

<CADENA>    {
            [\"]         {String tmp=cadena; cadena=""; yybegin(YYINITIAL);
                         return new Symbol(sym.CADENA,yyline,yycolumn,tmp);}
            [^\"]        {cadena+=yytext();}
}










