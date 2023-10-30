%{
#include <stdio.h>
%}

%option noyywrap

letra [a-zA-Z]
numero [0-9]
letra_numero [a-zA-Z0-9_]
signo [\+\-\*\/\=\%\>\<\!\&\|\~\^\?\:]
nombre_archivo ({letra_numero}+)
nombre_extension \.{letra}+

arch_texto "\.txt|\.doc|\.text|\.docx|\.rtf|\.odt|\.pdf|\.html|\.xml|\.json|\.csv|\.md|\.tex|\.log|\.cfg|\.ini|\.yml|\.yaml|\.html|\.css|\.js|\.php"
arc_video "\.mp4|\.avi|\.mkv|\.mov|\.wmv|\.flv|\.mpg|\.3gp|\.webm|\.rm|\.rmvb|\.m4v|\.ts"
arch_audio "\.mp3|\.wav|\.wma|\.ogg|\.aac|\.flac|\.alac|\.aiff|\.dsd|\.pcm|\.m4a"
arch_imagenes "\.jpg|\.jpeg|\.png|\.gif|\.bmp|\.svg|\.tiff|\.raw|\.psd|\.ai|\.eps|\.indd|\.pdf"
arch_directorio "\.zip|\.rar|\.7z|\.tar|\.gz|\.bz2|\.xz|\.iso|\.dmg|\.vcd|\.img|\.torrent"
arch_presentacion "\.ppt|\.pptx|\.odp"
arch_base_datos "\.mdb|\.accdb|\.sqlite"
arch_correo "\.eml|\.pst"
arch_ebook "\.epub|\.mobi"
arch_codigo_fuente "\.c|\.cpp|\.java|\.py|\.rb"
arch_diseno_grafico "\.psd|\.ai|\.cdr"
arch_hojas_calculo "\.xls|\.xlsx|\.ods"

%%

{nombre_archivo}{nombre_extension} {
    printf("Nombre del archivo: %s\n", yytext);
    printf("Nombre: %.*s\n", (int)(strcspn(yytext, ".")), yytext);
    printf("Extensión: %s\n", yytext + strcspn(yytext, ".") + 1);
}

%%
