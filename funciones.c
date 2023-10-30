#include <stdio.h>
#include <string.h>

// Variables globales para las expresiones regulares
char *arch_texto = "txt|doc|text|docx|rtf|odt|pdf|html|xml|json|csv|md|tex|log|cfg|ini|yml|yaml|html|css|js|php";
char *arc_video = "mp4|avi|mkv|mov|wmv|flv|mpg|3gp|webm|rm|rmvb|m4v|ts";
char *arch_audio = "mp3|wav|wma|ogg|aac|flac|alac|aiff|dsd|pcm|m4a";
char *arch_imagenes = "jpg|jpeg|png|gif|bmp|svg|tiff|raw|psd|ai|eps|indd|pdf";
char *arch_directorio = "zip|rar|7z|tar|gz|bz2|xz|iso|dmg|vcd|img|torrent";
char *arch_presentacion = "ppt|pptx|odp";
char *arch_base_datos = "mdb|accdb|sqlite";
char *arch_correo = "eml|pst";
char *arch_ebook = "epub|mobi";
char *arch_codigo_fuente = "c|cpp|java|py|rb";
char *arch_diseno_grafico = "psd|ai|cdr";
char *arch_hojas_calculo = "xls|xlsx|ods";

// Función para determinar el tipo de archivo
void determinarTipoArchivo(char *extension) {
    if (strstr(arch_texto, extension) != NULL) {
        printf("Tipo de archivo: Texto\n");
    } else if (strstr(arc_video, extension) != NULL) {
        printf("Tipo de archivo: Video\n");
    } else if (strstr(arch_audio, extension) != NULL) {
        printf("Tipo de archivo: Audio\n");
    } else if (strstr(arch_imagenes, extension) != NULL) {
        printf("Tipo de archivo: Imagen\n");
    } else if (strstr(arch_directorio, extension) != NULL) {
        printf("Tipo de archivo: Directorio comprimido\n");
    } else if (strstr(arch_presentacion, extension) != NULL) {
        printf("Tipo de archivo: Presentación\n");
    } else if (strstr(arch_base_datos, extension) != NULL) {
        printf("Tipo de archivo: Base de datos\n");
    } else if (strstr(arch_correo, extension) != NULL) {
        printf("Tipo de archivo: Correo\n");
    } else if (strstr(arch_ebook, extension) != NULL) {
        printf("Tipo de archivo: eBook\n");
    } else if (strstr(arch_codigo_fuente, extension) != NULL) {
        printf("Tipo de archivo: Código fuente\n");
    } else if (strstr(arch_diseno_grafico, extension) != NULL) {
        printf("Tipo de archivo: Diseño gráfico\n");
    } else if (strstr(arch_hojas_calculo, extension) != NULL) {
        printf("Tipo de archivo: Hoja de cálculo\n");
    } else {
        printf("Tipo de archivo desconocido\n");
    }
}
