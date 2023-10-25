%{
#include <stdio.h>
#include <string.h>
#include <Python.h>
%}

%option noyywrap

%%
[^\n]+ {
    char command[512];
    snprintf(command, sizeof(command), "python3 -c 'from textblob import TextBlob; print(TextBlob(\"%s\").sentiment.polarity)'", yytext);
    FILE* fp = popen(command, "r");

    if (fp == NULL) {
        // Manejo de error
    }

    char output[128];
    fgets(output, sizeof(output), fp);
    pclose(fp);

    double polarity = atof(output);

    if (polarity > 0.5) {
        printf("Tono feliz: %s\n", yytext);
    } else if (polarity < -0.5) {
        printf("Tono triste: %s\n", yytext);
    } else {
        printf("Tono neutro: %s\n", yytext);
    }
}

\n              ;  // Ignorar saltos de línea

.               { ; }  // Ignorar otros caracteres

%%

int main() {
    yylex();
    return 0;
}
