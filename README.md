# Analizador de Tipos de Archivo

Este es un sencillo analizador de tipos de archivo que toma un nombre de archivo como entrada y determina su tipo en función de su extensión. El analizador léxico fue creado utilizando la herramienta Flex.

## Uso

1. Asegúrate de tener Flex instalado en tu sistema. Si no lo tienes, puedes instalarlo siguiendo las instrucciones específicas de tu sistema operativo.

2. Compila el analizador léxico utilizando los siguientes comandos:

```shell
$ make
$ ./analizador
```

3. Ejecuta el analizador proporcionando el nombre de archivo como argumento. Reemplaza `nombre_archivo.ext` con el nombre del archivo que deseas analizar. El programa imprimirá el nombre del archivo, su extensión y el tipo de archivo determinado.

```shell
./analizador nombre_archivo.ext
```

## Tipos de Archivo Soportados

El analizador puede determinar los siguientes tipos de archivo basándose en la extensión:

- Texto
- Video
- Audio
- Imagen
- Directorio comprimido
- Presentación
- Base de datos
- Correo
- eBook
- Código fuente
- Diseño gráfico
- Hoja de cálculo

Si la extensión del archivo no coincide con ninguno de estos tipos, se mostrará "Tipo de archivo desconocido".

## Autor

**Alfonso Julián Zapata Velasco**