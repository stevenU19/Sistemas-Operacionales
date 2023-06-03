# Taller 11
## *Wilmer Steven Farfán Castillo - 2194285*

## 1. Explique la diferencia entre los conceptos de fragmentación interna y externa:

**Fragmentación interna:** Se produce cuando se asigna más memoria de la necesaria para almacenar un proceso o un bloque de datos. Esto ocurre cuando hay un desperdicio de memoria dentro de una región de almacenamiento asignada, debido a que los bloques de memoria se asignan en páginas, lo que puede provocar que la memoria no se utilice de manera eficiente Por ejemplo, si se considera un sistema operativo que asigna memoria en unidades de página de 4 KB y un proceso solo necesita 2.5 KB de memoria, se le asignará una página completa de 4 KB, lo que da origen a una fragmentación interna de 1.5 KB. Esta memoria no utilizada no está disponible para otros procesos, reduciendo así la capacidad del sistema.

**Fragmentación externa:** Se refiere a la situación en la que hay suficiente memoria total disponible en el sistema, pero no está contigua. Esto significa que hay suficiente memoria libre en pequeños bloques dispersos, pero no se puede asignar adecuadamente para satisfacer las necesidades de un proceso o una estructura de datos. La fragmentación externa ocurre cuando se asignan y liberan bloques de memoria, que con el tiempo se dividirán en fragmentos más pequeños, afectando así el almacenamiento de nuevos procesos mucho más grandes.


## 2. ¿En qué forma el editor de montaje cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria?:

El editor de montaje es una herramienta utilizada para traducir el código fuente en lenguaje ensamblador a código máquina. Durante este proceso, el editor de montaje puede cambiar la forma en que las instrucciones y los datos se acoplan a direcciones de memoria. Estos cambios pueden ocurrir en los siguientes casos:

- **Etiquetas y Símbolos:** El editor de montaje asigna direcciones de memoria a etiquetas y símbolos definidos en el código fuente, que se pueden representar instrucciones y datos. Al reemplazar las etiquetas y símbolos con las direcciones de memoria correspondientes, el editor de montaje facilita la ejecución del código.

- **Ajuste de Direcciones:** En algunos casos, el editor de montaje puede ajustar las direcciones de memoria de las instrucciones y los datos para garantizar que se asignen en ubicaciones específicas.

- **Resolución de Referencias:** Cuando hay instrucciones o datos que hacen referencia a ubicaciones de memoria que aún no se conocen, el editor de montaje puede realizar una resolución de referencias. 

- **Reubicación:** En algunos casos, el editor de montaje puede realizar reubicaciones en el código ensamblador para que sea independiente de la ubicación específica en la memoria.


## 3. ¿Qué información debe pasar el compilador al editor de montaje para facilitar el acoplamiento de memoria de éste?:

Para facilitar el acoplamiento de memoria de manera eficiente y precisa, garantizando que el programa final pueda ejecutarse correctamente en el sistema objetivo, el compilador debe proporcionar al editor de montaje cierta información:

- **Tamaño de los Tipos de Datos:** El compilador debe informar al editor de montaje sobre el tamaño de los diferentes tipos de datos utilizados en el programa, como enteros, caracteres, flotantes, etc, así se calcula correctamente las direcciones de memoria y se garantiza que se le asigne el suficiente espacio para cada variable.

- **Información sobre Variables y Funciones:** Tales como nombres, tipos de datos, tamaños y ubicaciones, para permitir al editor asignar correctamente las direcciones de memoria y generar código que acceda a las variables y funciones de manera adecuada.

- **Convenciones de Llamada:** Si el compilador utiliza una convención de llamada específica para pasar parámetros a funciones y gestionar la pila, debe transmitir esta información al editor de montaje para que este genere el código correcto para las llamadas a funciones y pueda realizar el acoplamiento de memoria adecuado.

- **Información de Enlace:** Si el programa utiliza enlaces a bibliotecas externas o módulos, se debe notificar incluyendo detalles como los nombres de las bibliotecas, los símbolos utilizados y las ubicaciones de enlace. Esta información es necesaria para resolver referencias a símbolos externos y garantizar que las llamadas y referencias a funciones se resuelvan correctamente durante el proceso de enlace.


## 4. En el siguiente orden, se tienen cinco particiones de memoria de 100 KB, 500 KB, 200 KB, 300KB, y 600 KB. ¿Cómo situarían en memoria una serie de procesos de 212 KB, 417 KB, 112KB y 426 KB en ese orden con los algoritmos de primer ajuste, mejor ajuste y peor ajuste?:

**Primer Ajuste:**
   - Se asigna el proceso de 212 KB a la primera partición disponible: en la de 500 KB.
   - Se asigna el proceso de 417 KB a la primera partición disponible: en la de 600 KB.
   - Se asigna el proceso de 112 KB a la primera partición disponible: en la de 200 KB.
   - Se asigna el proceso de 426 KB a la primera partición disponible: en la de 500 KB.

**Mejor Ajuste:**
   - Se asigna el proceso de 212 KB a la partición que mejor se ajuste, en la de 288 KB.
   - Se asigna el proceso de 417 KB a la partición que mejor se ajuste, en la de 500 KB.
   - Se asigna el proceso de 112 KB a la partición que mejor se ajuste, en la de 174 KB.
   - Se asigna el proceso de 426 KB a la partición que mejor se ajuste, en la de 500 KB.

**Peor Ajuste:**
   - Se asigna el proceso de 212 KB a la partición más grande disponible, en la de 500 KB.
   - Se asigna el proceso de 417 KB a la partición más grande disponible, en la de 600 KB.
   - Se asigna el proceso de 112 KB a la partición más grande disponible, en la de 300 KB.
   - Se asigna el proceso de 426 KB a la partición más grande disponible, en la de 600 KB.


## 5. La mayoría de OS permiten a los programas asignar más memoria a su espacio de direcciones durante la ejecución. ¿Qué se necesitaría para soportar la asignación dinámica de memoria en los siguientes esquemas?: Asignación Contigua de Memoria, Segmentación Pura, Paginación Pura:

**Asignación Contigua de Memoria:**
   - Un mecanismo para asignar y liberar bloques de memoria de forma dinámica, como una lista enlazada o un mapa de bits para hacer un seguimiento del espacio de memoria disponible.
   - Un algoritmo para seleccionar el bloque de memoria más adecuado para satisfacer una solicitud de asignación, como el algoritmo de mejor ajuste o el de primer ajuste.
   - Manejo adecuado de la fragmentación, tanto externa como interna, para garantizar la utilización eficiente de la memoria.
   - Un mecanismo para reubicar programas y ajustar las direcciones de memoria cuando sea necesario debido a la asignación dinámica y la liberación de bloques de memoria.

**Segmentación Pura:**
   - Un mecanismo para asignar y liberar segmentos de memoria de forma dinámica.
   - Un sistema de tablas de segmentos que almacene información sobre cada segmento asignado, como su tamaño, dirección base y límites.
   - Un algoritmo para seleccionar el segmento más adecuado para satisfacer una solicitud de asignación, considerando su tamaño y disponibilidad.
   - Un mecanismo para proteger los segmentos asignados de ser accedidos por otros programas de manera no autorizada.
   - Un manejo adecuado de la fragmentación externa y un posible reordenamiento de los segmentos para optimizar el uso de la memoria.

**Paginación Pura:**
   - Un mecanismo para asignar y liberar páginas de memoria de forma dinámica.
   - Un sistema de tablas de páginas que mapee las direcciones virtuales a direcciones físicas y almacene información sobre el estado de cada página (asignada o libre).
   - Un algoritmo para seleccionar la página más adecuada para satisfacer una solicitud de asignación, considerando su disponibilidad y ubicación en la memoria física.
   - Un mecanismo para manejar la traducción de direcciones virtuales a direcciones físicas, utilizando las tablas de páginas y las estructuras de paginación.
   - Un manejo adecuado de la fragmentación interna de las páginas y un posible ajuste de las tablas de páginas para optimizar el uso de la memoria.


## 6. Compare los esquemas de organización de la memoria principal basados en una asignación continua de memoria, en una segmentación pura y una paginación pura con respecto a: Fragmentación Externa, Fragmentación Interna, Capacidad de Compartir Código:

**Fragmentación Externa:**
   - Asignación continua de memoria: *Este esquema puede sufrir de fragmentación externa, especialmente cuando se asignan y liberan bloques de memoria de manera dinámica. A medida que los bloques de memoria se asignan y liberan, pueden quedar espacios pequeños e intercalados entre ellos, lo que resulta en fragmentación externa. Esto puede llevar a una utilización ineficiente de la memoria y dificultar la asignación de bloques de memoria más grandes.* 
   - Segmentación pura: *La segmentación pura también puede sufrir de fragmentación externa. A medida que se asignan y liberan segmentos de memoria, pueden quedar espacios vacíos entre ellos, lo que resulta en fragmentación externa.*
   - Paginación pura: *La paginación pura no sufre de fragmentación externa, debido a que la memoria se divide en páginas de tamaño fijo y se asignan de manera independiente. No hay espacios vacíos intercalados entre páginas, lo que resulta en una utilización eficiente de la memoria sin fragmentación externa.*

**Fragmentación Interna:**
   - Asignación continua de memoria: *En este esquema, puede haber fragmentación interna. Si se asigna un bloque de memoria más grande que el necesario para un programa, se desperdiciará parte de esa memoria debido a la diferencia entre el tamaño del bloque asignado y el tamaño real del programa. Esto puede conducir a una utilización ineficiente de la memoria.*
   - Segmentación pura: *La segmentación pura puede sufrir de fragmentación interna. Si un segmento asignado es más grande que el tamaño real del programa, habrá espacio no utilizado dentro del segmento, lo que resulta en fragmentación interna y una utilización menos eficiente de la memoria.*
   - Paginación pura: *La paginación pura también puede tener fragmentación interna. Las páginas se asignan en unidades fijas, por lo que si el tamaño de un programa no coincide exactamente con el tamaño de una página, se desperdiciará parte de la última página asignada, lo que resulta en fragmentación interna.*

**Capacidad de Compartir Código:**
   - Asignación continua de memoria: *En este esquema, puede haber cierta capacidad de compartir código entre programas si se les asigna memoria contigua y comparten secciones de código idénticas o librerías compartidas.*
   - Segmentación pura: *La segmentación pura puede facilitar el compartir código entre programas, ya que los segmentos pueden asignarse de forma independiente y permitir que diferentes programas accedan al mismo segmento de código compartido.*
   - Paginación pura: *La paginación pura también permite el compartir código entre programas. Las páginas de código pueden estar presentes en la memoria física y ser compartidas por múltiples programas mediante el uso de tablas de páginas compartidas.*


## 7. En un OS con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad. ¿Por qué? ¿Cómo podía el OS permitir el acceso a otras zonas de memoria? ¿Por qué debería o por qué no debería?:

**¿Por qué?:** En un OS con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad debido a la protección de memoria implementada por el sistema. Cada proceso tiene su propio espacio de direcciones virtuales, que se divide en páginas. Cada página está asociada con permisos de acceso, como lectura, escritura y ejecución. Estos permisos son controlados por el sistema operativo y se establecen durante la creación y asignación de páginas al proceso.

**Cómo podía el OS permitir el acceso a otras zonas de memoria?:** El sistema operativo puede permitir el acceso a otras zonas de memoria, *compartiendo memoria,* la cual incluye la asignación explícita de páginas compartidas que se pueden acceder y modificar por múltiples procesos. El acceso a estas zonas de memoria compartida se realiza a través de mecanismos de sincronización y comunicación entre procesos, como semáforos o mutex.
Además por el paso de mensajes entre procesos, que pueden comunicarse enviando mensajes que contienen datos específicos, en lugar de acceder directamente a la memoria de otros procesos. Esto garantiza un mayor nivel de control y seguridad en el acceso a la memoria de otros procesos.

**¿Por qué debería o por qué no debería?:** La decisión de permitir o no el acceso a otras zonas de memoria depende de varios factores como lo son la seguridad y la privacidad, en la cual se debe tener en cuenta el mantener la integridad y la confidencialidad de los datos, además de evitar la exposición de información sensible.


## 8. Compare el mecanismo de paginación con el de segmentación con respecto a la cantidad de memoria requerida por las estructuras de producción de direcciones para convertir las direcciones virtuales en direcciones físicas:

**Paginación:** Para implementar la paginación, se utiliza una tabla de páginas que mapea las direcciones virtuales a direcciones físicas. La cantidad de memoria requerida para la tabla depende del tamaño de la memoria virtual y el tamaño de las páginas. Sin embargo, esta tabla solo necesita almacenar información sobre las páginas que están realmente en uso por el proceso, permitiendo ahorrar memoria en el proceso.

**Segmentación:** En el caso de la segmentación, se utiliza una tabla de segmentos para mapear las direcciones virtuales a direcciones físicas. La tabla de segmentos contiene información sobre los segmentos de memoria del proceso, como su dirección base, longitud y permisos de acceso. La cantidad de memoria requerida para la tabla depende del número de segmentos en el proceso y de la cantidad de información necesaria para cada segmento. A diferencia de la paginación, la tabla de segmentos generalmente debe almacenar información sobre todos los segmentos posibles, incluso si no están todos en uso. Esto se debe a que los segmentos pueden tener tamaños variables y pueden ser asignados y liberados dinámicamente.

## 9. Considere la siguiente tabla de segmento, ¿cuáles son las direcciones físicas para las siguientes direcciones lógicas?: 
![tabla](https://github.com/stevenU19/Sistemas-Operacionales/blob/d734f44bd9374f0c9073c73536f104b6a6ed9571/Taller11/tabla.png)

#### 1. 0. 430: La dirección física sería: **(0, 649)** lo cual se encuentra dentro del rango del segmento 0.
#### 2. 1. 10: La dirección física sería:  **(1, 2310)** lo cual se encuentra dentro del rango del segmento 1.
#### 3. 2. 500: Por la longitud del segmento 2, de sólo 100, no se podría almacenar. No existe dirección lógica.
#### 4. 3. 400: La dirección física sería: **(3, 1727)** lo cual se encuentra dentro del rango del segmento 0.
#### 5. 4. 112: Por la longitud del segmento 5, de sólo 96, no se podría almacenar. No existe dirección lógica.
