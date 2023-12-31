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
    printf("\n¡Documento de texto detectado! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Texto\n");
    printf("Curiosidad: Los archivos de texto son ampliamente utilizados para el almacenamiento de información en un formato legible por humanos./n");
}

{nombre_archivo}\.(mp4|avi|mkv|mov|wmv|flv|mpg|3gp|webm|rm|rmvb|m4v|ts) {
    printf("\n¡Película en pantalla! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Video\n");
    printf("Curiosidad: Los archivos de video contienen secuencias de imágenes en movimiento y son fundamentales en la industria del entretenimiento./n");
}

{nombre_archivo}\.(mp3|wav|wma|ogg|aac|flac|alac|aiff|dsd|pcm|m4a) {
    printf("\n¡Escuchando música! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Audio\n");
    printf("Curiosidad: Los archivos de audio almacenan sonidos y música, y han evolucionado a lo largo de los años en términos de calidad de audio./n");
}

{nombre_archivo}\.(jpg|jpeg|png|gif|bmp|svg|tiff|raw|psd|ai|eps|indd|pdf) {
    printf("\n¡Obra de arte visual! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Imagen\n");
    printf("Curiosidad: Los archivos de imagen capturan imágenes visuales y son esenciales en diseño gráfico y fotografía./n");
}

{nombre_archivo}\.(zip|rar|7z|tar|gz|bz2|xz|iso|dmg|vcd|img|torrent) {
    printf("\n¡Tesoro comprimido! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Directorio comprimido\n");
    printf("Curiosidad: Los archivos comprimidos ahorran espacio de almacenamiento y facilitan la transferencia de múltiples archivos./n");
}

{nombre_archivo}\.(ppt|pptx|odp) {
    printf("\n¡Presentación en pantalla! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Presentación\n");
    printf("Curiosidad: Los archivos de presentación se utilizan para crear y mostrar diapositivas con contenido visual y texto./n");
}

{nombre_archivo}\.(mdb|accdb|sqlite) {
    printf("\n¡Base de datos bajo análisis! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Base de datos\n");
    printf("Curiosidad: Las bases de datos almacenan información estructurada y son esenciales en aplicaciones empresariales y de software./n");
}

{nombre_archivo}\.(eml|pst) {
    printf("\n¡Correo en la bandeja! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Correo\n");
    printf("Curiosidad: Los archivos de correo electrónico almacenan mensajes y son cruciales para la comunicación en línea./n");
}

{nombre_archivo}\.(epub|mobi) {
    printf("\n¡Leyendo un eBook! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: eBook\n");
    printf("Curiosidad: Los eBooks son libros electrónicos que se pueden leer en dispositivos electrónicos como lectores de libros electrónicos y tabletas./n");
}

{nombre_archivo}\.(c|cpp|java|py|rb) {
    printf("\n¡Código fuente detectado! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Código fuente\n");
    printf("Curiosidad: Los archivos de código fuente contienen instrucciones legibles por máquina utilizadas para desarrollar software./n");
}

{nombre_archivo}\.(psd|ai|cdr) {
    printf("\n¡Creando diseño! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Diseño gráfico\n");
    printf("Curiosidad: Los archivos de diseño gráfico se utilizan en la creación de logotipos, ilustraciones y diseños visuales./n");
}

{nombre_archivo}\.(xls|xlsx|ods) {
    printf("\n¡Hoja de cálculo en acción! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Hoja de cálculo\n");
    printf("Curiosidad: Las hojas de cálculo son herramientas poderosas para realizar cálculos y análisis de datos./n");
}

{nombre_archivo}\.(exe|msi|apk|app|bat|sh|jar|com|gadget|wsf) {
    printf("\n¡Programa en ejecución! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %s\n", yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Programa ejecutable\n");
    printf("Curiosidad: Los archivos ejecutables son programas informáticos que realizan tareas específicas en una computadora./n");
}


{nombre_archivo}{nombre_extension} {
    printf("\n¡Archivo desconocido! Nombre del archivo: %s\n", yytext);
    printf("Nombre: %s\n", yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
    printf("Tipo de archivo: Desconocido\n");
}

%%

int main() {
    yylex();
    return 0;
}
