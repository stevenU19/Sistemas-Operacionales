# Taller 10
## *Wilmer Steven Farfán Castillo - 2194285*

## 1. Considere la imagen, demuestre que las cuatro condiciones necesarias para que se produzca un interbloqueo se cumplen:

**Fragmentación interna:** Se produce cuando se asigna más memoria de la necesaria para almacenar un proceso o un bloque de datos. En otras palabras, ocurre cuando hay un desperdicio de memoria dentro de una región de almacenamiento asignada. Este desperdicio se debe a que los bloques de memoria se asignan en unidades fijas (por ejemplo, páginas o bloques de disco), lo que puede provocar que la memoria no se utilice de manera eficiente Por ejemplo, considera un sistema operativo que asigna memoria en unidades de página de 4 KB. Si un proceso solo necesita 2.5 KB de memoria, se le asignará una página completa de 4 KB, lo que resulta en una fragmentación interna de 1.5 KB. Esta memoria no utilizada no está disponible para otros procesos, lo que puede reducir la capacidad general de almacenamiento del sistema.

**Fragmentación externa:** Se refiere a la situación en la que hay suficiente memoria total disponible en el sistema o en una base de datos, pero no está contigua. Esto significa que hay suficiente memoria libre en pequeños bloques dispersos, pero no se puede asignar de manera contigua para satisfacer las necesidades de un proceso o una estructura de datos. La fragmentación externa puede ocurrir cuando se asignan y liberan bloques de memoria o cuando se realizan inserciones y eliminaciones en una base de datos. Con el tiempo, los bloques de memoria o las áreas de almacenamiento se dividen en fragmentos más pequeños y no contiguos, lo que dificulta la asignación de bloques de memoria grandes o la colocación de estructuras de datos más grandes.


## 2. **¿En qué forma el editor de montaje cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria?:**

El editor de montaje es una herramienta utilizada para traducir el código fuente en lenguaje ensamblador a código máquina, el cual se ejecuta directamente por el procesador. Durante este proceso, el editor de montaje puede cambiar la forma en que las instrucciones y los datos se acoplan a direcciones de memoria. Aquí hay algunas formas en las que esto puede ocurrir:

- Etiquetas y símbolos: El editor de montaje asigna direcciones de memoria a etiquetas y símbolos definidos en el código fuente. Estos símbolos pueden representar tanto instrucciones como datos. Al reemplazar las etiquetas y símbolos con las direcciones de memoria correspondientes, el editor de montaje facilita la ejecución del código.

- Ajuste de direcciones: En algunos casos, el editor de montaje puede ajustar las direcciones de memoria de las instrucciones y los datos para garantizar que se asignen en ubicaciones específicas. Esto puede ser útil para optimizar la ejecución del código o garantizar la alineación adecuada de los datos en la memoria.

- Resolución de referencias: Cuando hay instrucciones o datos que hacen referencia a ubicaciones de memoria que aún no se conocen, el editor de montaje puede realizar una resolución de referencias. Esto implica buscar esas referencias y asignarles las direcciones de memoria adecuadas una vez que se conocen.

- Reubicación: En algunos casos, el editor de montaje puede realizar reubicaciones en el código ensamblador para que sea independiente de la ubicación específica en la memoria. Esto permite que el código se ejecute en diferentes direcciones de memoria sin necesidad de modificaciones adicionales.
