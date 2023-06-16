# Taller 12
## *Wilmer Steven Farfán Castillo - 2194285*

## 1. Explique el soporte por hardware requerido para implementar la paginación bajo demanda:

La paginación bajo demanda es una técnica utilizada en para administrar el uso de memoria de manera eficiente, permitiendo cargar y descargar secciones de manera dinámica a medida que se necesitan. Para ello se requiere de una unidad de gestión de memoria (MMU), componente que se encarga de realizar la traducción de direcciones virtuales a direcciones físicas en la memoria principal. Permite que los procesos utilicen direcciones virtuales que se mapean a ubicaciones físicas reales en la memoria. Por otro lado, se hace necesario el uso de una tabla de páginas, que es una estructura de datos utilizada por la MMU para realizar la traducción de direcciones virtuales a direcciones físicas. Esta tabla almacena la información de mapeo entre las direcciones virtuales y físicas de las páginas. Cada entrada en la tabla de páginas contiene información como el número de página virtual, el número de página física correspondiente y bits de control para permisos y protección.

La paginación bajo demanda requiere de una memoria virtual, que es una extensión de la memoria física proporcionada por el OS. La memoria virtual permite que los procesos utilicen más memoria de la disponible físicamente en la memoria principal. Cuando se necesita una página que no está presente en la memoria física, se genera una falta de página (page fault) y el sistema operativo se encarga de cargar la página necesaria desde el almacenamiento secundario (como un disco duro) a la memoria principal. Dado que no todas las páginas se pueden cargar en la memoria principal al mismo tiempo, se requiere un medio de almacenamiento secundario para guardar las páginas que no están actualmente en uso. Esto puede ser un disco duro u otro dispositivo de almacenamiento masivo. Las páginas se cargan desde el almacenamiento secundario a medida que se solicitan, y se pueden descargar de nuevo cuando ya no son necesarias.


## 2. ¿Qué es la característica de copia durante la escritura y en que circunstancias es ventajoso usar estas características?:

La característica de Copy-on-Write, es una técnica utilizada en OS y bases de datos para optimizar la administración de memoria y el rendimiento al realizar copias de datos. En lugar de copiar inmediatamente los datos cuando se realiza una escritura, la estrategia de copia durante la escritura posterga la copia hasta que sea necesaria. En su lugar, se comparte una copia en memoria entre el proceso original y el proceso que realiza la escritura. Cuando se produce una modificación en los datos, se realiza una copia separada antes de aplicar la escritura. Esto permite ahorrar recursos y tiempo al evitar copias innecesarias de datos.

Existen diversas circunstancias en las que la característica de copia durante la escritura resulta ventajosa:

1. Eficiencia en la administración de memoria: Al postergar la copia de datos, se puede compartir la misma área de memoria entre varios procesos o hilos sin tener que duplicar el contenido completo. Esto ahorra recursos y reduce la sobrecarga asociada con las copias de memoria.

2. Rendimiento durante la clonación de procesos: Al crear un nuevo proceso a partir de un proceso existente (clonación de procesos), la copia durante la escritura permite que ambos procesos compartan la misma memoria hasta que uno de ellos realice una escritura. Esto acelera la creación de procesos y evita copiar todo el espacio de direcciones en memoria.

3. Instantáneas (snapshots) en bases de datos: En las bases de datos, la copia durante la escritura se puede utilizar para crear instantáneas coherentes de los datos en un momento específico. En lugar de copiar todos los datos al crear la instantánea, se comparten los datos existentes y se copian solo las páginas modificadas durante las operaciones de escritura.

4. Sistemas de archivos virtuales: En los sistemas de archivos virtuales, la copia durante la escritura se puede utilizar para implementar mecanismos de escritura diferida. En lugar de escribir inmediatamente en el disco cada vez que se realiza una escritura, los datos se mantienen en memoria y se copian solo cuando es necesario sincronizarlos con el almacenamiento persistente.

En resumen, la característica de copia durante la escritura es una técnica que posterga la copia de datos hasta que sea necesaria. Esto permite compartir y reutilizar memoria, lo que resulta en una administración eficiente de recursos y un mejor rendimiento en diversas situaciones, como la clonación de procesos, instantáneas en bases de datos y sistemas de archivos virtuales.

