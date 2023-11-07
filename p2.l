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
    printf("¡Documento de texto detectado! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Texto, la forma más antigua de almacenar información escrita.\n");
}

{nombre_archivo}\.(mp4|avi|mkv|mov|wmv|flv|mpg|3gp|webm|rm|rmvb|m4v|ts) {
    printf("¡Película en pantalla! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Video, una ventana al mundo del entretenimiento.\n");
}

{nombre_archivo}\.(mp3|wav|wma|ogg|aac|flac|alac|aiff|dsd|pcm|m4a) {
    printf("¡Escuchando música! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Audio, la banda sonora de la vida.\n");
}

{nombre_archivo}\.(jpg|jpeg|png|gif|bmp|svg|tiff|raw|psd|ai|eps|indd|pdf) {
    printf("¡Obra de arte visual! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Imagen, la belleza capturada en píxeles.\n");
}

{nombre_archivo}\.(zip|rar|7z|tar|gz|bz2|xz|iso|dmg|vcd|img|torrent) {
    printf("¡Tesoro comprimido! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Directorio comprimido, como una caja de sorpresas digital.\n");
}

{nombre_archivo}\.(ppt|pptx|odp) {
    printf("¡Presentación en pantalla! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Presentación, la herramienta de comunicación visual.\n");
}

{nombre_archivo}\.(mdb|accdb|sqlite) {
    printf("¡Base de datos bajo análisis! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Base de datos, el corazón de la información.\n");
}

{nombre_archivo}\.(eml|pst) {
    printf("¡Correo en la bandeja! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Correo, la correspondencia digital.\n");
}

{nombre_archivo}\.(epub|mobi) {
    printf("¡Leyendo un eBook! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: eBook, la biblioteca en tu bolsillo.\n");
}

{nombre_archivo}\.(c|cpp|java|py|rb) {
    printf("¡Código fuente detectado! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Código fuente, las instrucciones de la tecnología.\n");
}

{nombre_archivo}\.(psd|ai|cdr) {
    printf("¡Creando diseño! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Diseño gráfico, la creatividad hecha digital.\n");
}

{nombre_archivo}\.(xls|xlsx|ods) {
    printf("¡Hoja de cálculo en acción! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Hoja de cálculo, el mundo de los números.\n");
}

. {
    printf("Nombre del archivo: %s\n", yytext);
    printf("Nombre: %s\n", yytext);
    printf("Extensión: Desconocida por el sistema\n");
    printf("Tipo de archivo: Desconocido, ¡un misterio digital!\n");
}

%%

int main() {
    yylex();
    return 0;
}
