%{
#include <stdio.h>
#include <string.h>
%}

%option noyywrap

letra [a-zA-Z]
numero [0-9]
letra_numero [a-zA-Z0-9_]
signo [\+\-\*\/\=\%\>\<\!\&\|\~\^\?\:]
nombre_archivo ({letra_numero}+)
nombre_extension \.{letra_numero}+

%%

{nombre_archivo}\.(txt|doc|text|docx|rtf|odt|pdf|html|xml|json|csv|md|tex|log|cfg|ini|yml|yaml|html|css|js|php) {
    printf("Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Texto\n");
}

{nombre_archivo}\.(mp4|avi|mkv|mov|wmv|flv|mpg|3gp|webm|rm|rmvb|m4v|ts) {
    printf("Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Video\n");
}

{nombre_archivo}\.(mp3|wav|wma|ogg|aac|flac|alac|aiff|dsd|pcm|m4a) {
    printf("Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Audio\n");
}

{nombre_archivo}\.(jpg|jpeg|png|gif|bmp|svg|tiff|raw|psd|ai|eps|indd|pdf) {
    printf("Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Imagen\n");
}

{nombre_archivo}\.(zip|rar|7z|tar|gz|bz2|xz|iso|dmg|vcd|img|torrent) {
    printf("Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Directorio comprimido\n");
}

{nombre_archivo}\.(ppt|pptx|odp) {
    printf("Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Presentación\n");
}

{nombre_archivo}\.(mdb|accdb|sqlite) {
    printf("Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Base de datos\n");
}

{nombre_archivo}\.(eml|pst) {
    printf("Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Correo\n");
}

{nombre_archivo}\.(epub|mobi) {
    printf("Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: eBook\n");
}

{nombre_archivo}\.(c|cpp|java|py|rb) {
    printf("Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Código fuente\n");
}

{nombre_archivo}\.(psd|ai|cdr) {
    printf("Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Diseño gráfico\n");
}

{nombre_archivo}\.(xls|xlsx|ods) {
    printf("Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Hoja de cálculo\n");
}

. {
    printf("Nombre del archivo: %s\n", yytext);
    printf("Nombre: %s\n", yytext);
    printf("Extensión: Desconocida por el sistema\n");
    printf("Tipo de archivo: Desconocido\n");
}

%%

int main() {
    yylex();
    return 0;
}
