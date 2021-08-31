%%

%unicode
%class adalexer
%line
%column
%int
%standalone


//Palabras Reservadas para ADA
    PALABRA_RESERVADA = "abort"|"else"|"new" |"return"|"abs"|"elsif"|"not"|"reverse"|"abstract"|"end"|"null"|"accept"|
                "entry"	|"select"|"access"|"exception"|"of"|"separate"|"aliased"|"exit"|"or"|"all" |"others"|"subtype"|
                "and"|"for"|"out"|"array"|"function"|"at"|"tagged"|"generic"|"package"|"task"|"begin"|"goto"|"pragma"|"terminate"|
                "body"|"private"|"then"|"if"|"procedure"|"type"|"case"|"in"|"protected"|"constant"|"until"|"is"|"raise"|"use"|
                "declare"|"range"|"delay"|"limited"|"record"|"when"|"delta"|"loop"|"rem"|"while"|"digits"|"renames"|"with"|
                "do"|"mod"|"requeue"|"xor"

    dataType ="Integer" |"Float" | "Character" | "String" | "array" | "Array"
//lectura y escritura
    put = "Put"
    get = "Get"
//Caracteres
    dos_puntos=":"
    punto_coma=";"
    equal="="
    espacio=" "
    punto= "."
    coma= ","
    guion="--"
    guion_bajo="_"

    ampersand = "&"
    apostrofe = "'"|\"
    numeral = "#"

    leftParentesis = "("
    rightParentesis = ")"
    
    leftCorchete = "["
    rightCorchete = "]"

    leftLlave = "{"
    rightLlave = "}"
    //Operadores
    OPERADOR_SUMA = "+"
    OPERADOR_RESTA ="-"
    OPERADOR_MULTIPLICACION ="*"
    OPERADOR_DIVISION = "/"
    OPERADOR_MAYOR_QUE = ">"
    OPERADOR_MENOR_QUE = "<"
    OPERADOR_IGUALDAD = "=="
    OPERADOR_MAYOR_IGUAL =">="
    OPERADOR_MENOR_IGUAL = "<="
    OPERADOR_DIVISOR ="/="
    OPERADOR_BOOLEANO = ("true")|("false")
//Delimitadores
    ASIGNACION = {dos_puntos}{equal}
    flecha = "=>"
    dospuntos =".."
    dosAsteriscos = "**"
    leftlabel="<<"
    rightlabel=">>"
    box="<>"
    NotEQUAL= ("/"){equal}
//Variable
    LETRA= [a-zA-Z]
    NUMERO=[0-9]
    IDENTIFICADOR= {LETRA}+({NUMERO}|{guion_bajo}|{LETRA})*// se pueden declarar varias variables seguidas de "," ejem: total, subtotal: Float;
    STRING = \"({LETRA}|{NUMERO})*\"

    ENTERO = [1-9][0-9]* | 0
    DECIMAL= {NUMERO} ({punto}{NUMERO}*)?
%%

<YYINITIAL> {
    {PALABRA_RESERVADA} {System.out.println(yytext() +"\t\t PALABRA_RESERVADA WORD");}

    {dataType} {System.out.println(yytext() + "\t\t DATA TYPE");}

    {IDENTIFICADOR} {System.out.println(yytext() +"\t\t IDENTIFICADOR");}

    {ENTERO} {System.out.println(yytext() +"\t\t ENTERO");}

    {STRING} {System.out.println(yytext() +"\t\t STRING");}

    {DECIMAL} {System.out.println(yytext() +"\t\t DECIMAL");}

    {dos_puntos} {System.out.println(yytext() +"\t\t dos_puntos");}

    {punto_coma} {System.out.println(yytext() + "\t\t punto_coma");}

    {ampersand} {System.out.println(yytext() + "\t\t AMPERSAND");}

    {coma} {System.out.println(yytext() + "\t\t coma");}

    {punto} {System.out.println(yytext() + "\t\t punto");}

    {numeral} {System.out.println(yytext() + "\t\t NUMERO SIGN");}

    {apostrofe} {System.out.println(yytext() + "\t\t apostrofe");}

    {numeral} {System.out.println(yytext() + "\t\t NUMERO SIGN");}

    {leftParentesis} {System.out.println(yytext() + "\t\t LEFT PARENTHESIS");}

    {rightParentesis} {System.out.println(yytext() + "\t\t RIGHT PARENTHESIS");}

    {guion} {System.out.println(yytext() + "\t\t guion");}

    {flecha} {System.out.println(yytext() + "\t\t flecha");}

    {dospuntos} {System.out.println(yytext() + "\t\t DOUBLE DOT");}

    {dosAsteriscos} {System.out.println(yytext() + "\t\t DOUBLE STAR");}

    {leftlabel} {System.out.println(yytext() + "\t\t LEFT LABEL");}

    {rightlabel} {System.out.println(yytext() + "\t\t RIGHT LABEL");}

    {box} {System.out.println(yytext() + "\t\t BOX");}


    //Operadores
    {PALABRA_RESERVADA} {System.out.println(yytext() +"\t\t PALABRA RESERVADA");}
    {ASIGNACION} {System.out.println(yytext() +"\t\t ASIGNACION");}
    {OPERADOR_SUMA} {System.out.println(yytext() +"\t\t OPERADOR DE SUMA");}
    {OPERADOR_RESTA} {System.out.println(yytext() +"\t\t OPERADOR DE RESTA");}
    {OPERADOR_MULTIPLICACION} {System.out.println(yytext() +"\t\t OPERADOR DE MULTIPLICACION");}
    {OPERADOR_DIVISION} {System.out.println(yytext() +"\t\t OPERADOR DE DIVISION");}
    {OPERADOR_MAYOR_QUE} {System.out.println(yytext() +"\t\t OPERADOR MAYOR QUE ");}
    {OPERADOR_MENOR_QUE} {System.out.println(yytext() +"\t\t OPERADOR MENOR QUE ");}
    {OPERADOR_IGUALDAD} {System.out.println(yytext() +"\t\t OPERADOR DE IGUALDAD ");}
    {OPERADOR_MAYOR_IGUAL} {System.out.println(yytext() +"\t\t OPERADOR MAYOR O IGUAL ");}
    {OPERADOR_MENOR_IGUAL} {System.out.println(yytext() +"\t\t OPERADOR MENOR O IGUAL ");}
    {OPERADOR_DIVISOR} {System.out.println(yytext() +"\t\t OPERADOR DEVISOR O ESCALABILIDAD ");}
    {OPERADOR_BOOLEANO} {System.out.println(yytext() +"\t\t OPERADOR BOOLEANO ");}
    {espacio} {}
    . {System.out.println(yytext() + "\t\t ERROR");}
}





