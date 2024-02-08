package Analizadores;
import java.io.*;
import java_cup.runtime.*;
import java.util.ArrayList;




%%
%{
    String cadena;
%}

%init{
    yyline=1;
    yycolumn=1;
$init}

%cup
%class scanner
%public
%line
%char
%column
%full
%ingorecase

%state CADENA

//Simbolos
DOSPTS = ":"
MAY = "<"
MEN = ">"
RES = "-"
PTCOMA = ";"
EXC = "!"
CORA = "["
CORC = "]"
ARROBA = "@"
PARA = "("
PARC = ")"
COM = """

