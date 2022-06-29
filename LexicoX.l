%{
#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include <string.h>

%}

%option noyywrap
%option yylineno

/* Seccion Tokens */
DIGITO          [0-9]
LETRA           [a-zA-Z]
ESPACIO         [" "]
INI_COMENTARIO  ["/*"]
FIN_COMENTARIO  ["/*"]
GUIONES         [-_]
CHAR_COMA       [","]
CHAR_PUNTO      ["."]
CHAR_PUNTOYCOMA [";"]
CHAR_DOSPUNTOS  [":"]

IDENTIFICADOR   {LETRA}({LETRA}|{DIGITO}|{GUIONES})*
CONST_INTEGER   (-?[1-9][0-9]{0,4})|0
CONST_FLOAT     {DIGITO}{0,8}{CHAR_PUNTO}{DIGITO}{1,8}
CONST_CADENA    \"[^\n]*\"

/* Operadores lógicos y operadores aritméticos básicos */
OP_SUMA         ["+"]
OP_RESTA        ["-"]
OP_MULT         ["*"]
OP_DIV          ["/"]
OP_IGUAL        ["="]
OP_MAYOR        [">"]
OP_MENOR        ["<"]
OP_MAYORIGUAL    ">-"
OP_MENORIGUAL    "<"
OP_COMP_IGUAL    "=="
OP_NEGACION      "!"
OP_DISTINTO      "!="
/* Tiene doble funcionalidad, definir un tipo de datos o asignar un valor */
OP_DOSPUNTOS    [":"]

/* Caracteres que se apertura, cierre y fin de línea */
LLAVE_A         ["{"]
LLAVE_C         ["}"]
PARENTESIS_A    ["("]
PARENTESIS_C    [")"]
FIN_SENTENCIA   [";"]

/* Palabras reservadas */
IF              "if"|"IF"
WHILE           "while"|"WHILE"
DECVAR          "DECVAR"
ENDDEC          "ENDDEC"
INTEGER         "INTEGER"|"Integer"
FLOAT           "Float"|"FLOAT"
WRITE           "write"|"WRITE"

