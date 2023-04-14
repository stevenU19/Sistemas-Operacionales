# Taller 04

## *Wilmer Steven Farfán Castillo - 2194285*

## 1. Las funciones y servicios proporcionados por el OS pueden dividirse en dos categorías, descríbalas.

Las funciones y servicios proporcionados por el sistema operativo se pueden dividir en dos: 

Para la primera categoría se tiene las **Funciones del Sistema Operativo**, las cuales se encarga de administrar el hardware del computador. En este apartado se tiene la administración del procesador, en la cual se gestiona los procesos y los cálculos requeridos que llegan a este; la administración y asignamiento de la memoria de acceso aleatorio; la administración del sistema de archivos en el disco duro y en las otras unidades que se puedan tener; la administración de dispositivos de entrada y salida, conocidos también como periféricos.

El sistema operativo se encarga de administrar conjuntamente cada uno de los apartados mencionados para hacer funcionar un sistema informático. De tal forma que para correr un programa, se pida el hardware requerido para hacerlo funcionar, adicionalmente manteniendo en funcionamiento aquellos procesos que se encuentran en segundo plano.

Por otro lado, en la segunda categoría se tienen los **Servicios de aplicaciones del sistema operativo** las cuales se incluyen aquellos servicios adicionales para que el hardware pueda interactuar con el software. Por ejemplo se tienen los controladores de dispositivos, llamados también *drivers*. Además se tienen los servixios de red para facilitar la comunicación con otros computadores o conexión a internet y la API (Interfaz de Programación de Aplicaciones) en los cuales los desarrolladores hacen uso para crear los programas que van a correr sobre el SO.


## 2. Enumere cinco servicios proporcionados por el OS diseñados para facilitar la comodidad del usuario.

Un sistema operativo ofrece diversos servicios que están destinados en primer lugar para facilitar la vida del usuario, haciendo que la experiencia de uso sea mucho más amena y sencilla de usar. Esto, tiene como finalidad buscar que el usuario se centre en la tarea que debe realizar y no en hacer funcionar el OS correctamente.

- Interfaz gráfica de usuario (GUI): La GUI es un servicio que consta es una interfaz visual que incluye elementos como ventanas, menús, iconos y botones. La gran mayoría de SO en la actualidad, utilizan una interfaz gráfica y algunos ofrecen variedad de personalización, especialmente en las distribuciones de Linux.

- Controladores de dispositivos: El SO incluye controladores genéricos para una amplia variedad de dispositivos. Esto facilita mucho la vida del usuario porque ofrece rapidez en la configuración de algún periferico nuevo o algún tipo de hardware que incluya el computador (tarjetas de video). Sin embargo, en muchas ocasiones es necesario instalarlos manualmente para mejorar el rendimiento.

- Buscador de archivos: Permite a los usuarios buscar archivos y carpetas en el sistema operativo. Esta herramienta ayuda a los usuarios a encontrar archivos específicos de manera rápida, eficiente e intuitiva, porque gracias a la GUI se puede modificar los archivos, mover o copiar mucho más rápidamente.

- Asistentes de accesibilidad: Muchos sistemas operativos incluyen asistentes de accesibilidad que ayudan a los usuarios con discapacidades visuales, auditivas o de movilidad a utilizar el sistema operativo de manera efectiva. Estos asistentes incluyen características como teclados virtuales, reconocimiento de voz, lectores de pantalla, asistentes por voz, etc. Por ejemplo Windows 10 incluye diferentes asistentes incluido Coartana.

- Administrador de tareas: Es una herramienta muy importante que permite ver y controlar los procesos, aplicaciones y servicios que se están ejecutando en el sistema operativo. Además de poder administrar los procesos manualmente cuando exite mucho consumo de recursos, presenta información detallada del hardware de la computadora.


## 3. Describa como se puede generar un informe estadístico de la cantidad de tiempo y recursos consumidos por un programa.

Para generar un informe estadístico se puede utilizar utiliza una herramienta de monitorización como el administrador de tareas por ejemplo, en la cual se visualiza los recursos utilizados por un programa. Acá se registran los datos del uso de procesador, memoria, disco duro, red y gráficos. Luego se debe ejecutar el programa durante cierto tiempo para que la herramienta de monitorización, registre los datos. Finalmente, se analizan e interpretan los datos para poder generar un informe estadístico con información, tanto relevante como no. Se debe entonces analizar posibles cuellos de botella en la ejecución del programa para tomar decisiones, desde actualizar el programa hasta incluso actualizar componentes de hardware.


## 4. Enumere y describa cinco actividades de un OS enfocadas a la administración de archivos.

Un OS debe administrar los ficheros almacenados en la unidad de disco duro. La GUI facilita el trabajo ofreciendo alternativas como atajos de teclado, comandos o arrastrar y soltar. Se contemplan:

- Creación de archivos
- Búsqueda de archivos
- Renombrar archivos
- Mover o copiar archivos a otras direcciones o incluso a servicios de almacenamiento en nube
- Eliminación de archivos

Son operaciones básicas que le permiten al usuario tener un mayor orden en la distribución de su almacenamiento, ofreciendo una alternativa personalizable. Además también el OS ofrece servicios de compresión y descompresión de archivos, así como su protección en equipos compartidos.

## 5. Compare las ventajas y desventajas de usar la misma interfaz de llamadas al sistema para la manipulación de archivos como de dispositivos.

**Ventajas:**

- Simplicidad en el desarrollo de software, al utilizar una única interfaz para manipular archivos y dispositivos.

- Consistencia, en la forma en que se acceden y se manipulan los archivos y los dispositivos en el OS.

- Flexibilidad en el desarrollo de software, debido a que pueden utilizar las mismas funciones para acceder a diferentes tipos de dispositivos, como unidades de disco, dispositivos USB, etc.

**Desventajas:**

- Complejidad: La utilización de una interfaz común puede aumentar la complejidad de las llamadas al sistema, dificultando el mantenimiento del código.

- Rendimiento: Las llamadas al sistema pueden requerir más tiempo para procesar información y realizar operaciones.

- Limitaciones: Puede limitar la funcionalidad de las llamadas al sistema, al existir características específicas de los dispositivos que no estén disponibles en la interfaz común.


## 6. Conteste las siguientes preguntas: ¿Cuál es el propósito del interprete de comandos? ¿Por qué está separado del kernel? Liste los requisitos para desarrollar un interprete de comandos:

- *¿Cuál es el propósito del intérprete de comandos?:* Es un programa que se utiliza para interpretar y ejecutar comandos ingresados por el usuario en una línea de comandos. El propósito principal del intérprete es el de proporcionar una interfaz entre el usuario y el sistema operativo, permitiendo al usuario interactuar con el sistema operativo, convirtiendo cada uno de los comandos (según estén programados) en acciones del sistema operativo.

- *¿Por qué está separado el intérprete de comandos del kernel?:* El intérprete de comandos se separa del kernel por razones de seguridad. Si el intérprete de comandos se ejecuta en modo kernel, cualquier error en el código del intérprete de comandos podría comprometer la seguridad y estabilidad del OS. Al mantener el intérprete de comandos separado del kernel, se evitan estos inconvenientes, un pequeño error en la digitalización del comando puede resultar altamente perjudicial para el sistema operativo.

- *Liste los requisitos para desarrollar un intérprete de comandos:*
Un intérprete de comandos requiere de requisitos tanto funcionales como no funcionales:

*Funcionales:*
- Capacidad de procesamiento y ejecución de comandos básicos
- Capacidad para restringir la entrada y salidad de comandos 
- Capacidad de manejar variables y ejecutar scripts
- Capacidad de implementar funciones
- Sugerencias de autocompletado
- Mantener un historial de comandos (muy importante) para facilitar la recuperación de los comandos previamente utilizados

*No Funcionales:*
- De fácil uso para el usuario
- Rápido y eficiente en su respuestas
- Compatible con diferentes plataformas y OS
- Ofrecer seguridad y evitar la ejecución de comandos peligrosos que puedan dañar el SO

# 7. Compare las ventajas y desventajas de los modelos de intercomunicación.

- *Ventajas del Modelo basado en mensajes:*

El modelo basado en mensajes permite que los procesos se comuniquen de manera asíncrona, lo que significa que los procesos no tienen que esperar a que otro proceso termine de ejecutarse para realizar su función. Este enfoque es altamente escalable sin comprometer el rendimiento. El modelo es resistente a fallos, permitiendo a otros procesos continuar con su trabajo sin interrupción.

- *Desventajas del Modelo basado en mensajes:*

El modelo basado en mensajes es menos eficiente en comparación con el modelo basado en memoria compartida, debido a que requiere una mayor sobrecarga para la comunicación y sincronización entre los procesos. Este enfoque puede ser más complejo porque se deben implementar la lógica para recibir, enviar y procesar los mensajes.

- *Ventajas del Modelo basado en Memoria Compartida:*

El modelo basado en memoria compartida es altamente eficiente, los procesos pueden acceder directamente a la memoria compartida. Es más fácil de implementar a comparación con el modelo basado en mensajes. Este modelo es adecuado para aplicaciones que requieren una alta tasa de intercambio de datos entre procesos.

- *Desventajas del Modelo basado en Memoria Compartida:*

El modelo es menos escalable a comparación del modelo basado en mensajes, esto es porque pueden haber problemas de congestión de memoria compartida si se manejan demasiados procesos a la vez. Este enfoque es menos resistente a fallos. Un proceso puede afectar directamente a otros procesos que comparten la misma memoria.


# 8. Conteste las siguientes preguntas: ¿Cuál es la principal ventaja de usar microkernel en el diseño del OS? ¿Cómo interactúan los programas de usuario y los servicios del OS en una arquitectura basada en microkernel? ¿Cuáles son las desventajas de usar la arquitectura de microkernel?

- *¿Cuál es la principal ventaja de usar microkernel en el diseño del OS?:* La principal ventaja de usar un microkernel en el diseño de un sistema operativo es la modularidad. Al tener un microkernel, el núcleo del sistema operativo es pequeño y solo se encarga de tareas básicas como la gestión de memoria y la planificación de procesos. Funciones más complejas, como el sistema de archivos o la red, se ejecutan en espacio de usuario como servicios separados. Esto permite que el sistema operativo sea más fácil de mantener, modificar y extender.

- *¿Cómo interactúan los programas de usuario y los servicios del OS en una arquitectura basada en microkernel?:* En una arquitectura basada en microkernel, los programas de usuario y los servicios del sistema operativo interactúan mediante una interfaz de comunicación definida. Los servicios se ejecutan en espacio de usuario y se comunican con el núcleo del sistema operativo a través de llamadas al sistema. Los programas de usuario también pueden comunicarse directamente con los servicios del sistema operativo, lo que permite una mayor flexibilidad y modularidad en el diseño del sistema.

- *¿Cuáles son las desventajas de usar la arquitectura de microkernel?:* Las desventajas de usar la arquitectura de microkernel incluyen una posible disminución del rendimiento debido a la sobrecarga de comunicación entre los servicios del sistema operativo y el núcleo. Además, la modularidad del sistema puede aumentar la complejidad del diseño y la implementación, lo que puede dificultar la depuración y el mantenimiento. Por último, debido a que los servicios del sistema operativo se ejecutan en espacio de usuario, existe un mayor riesgo de vulnerabilidades de seguridad.

# 9. Compare las ventajas y desventajas de usar VM.

Una máquina virtual o VM (virtual machine) es un software que tiene como objetivo la creación de un entorno independiente dentro de un sistema que permite instalar otro sistema operativo de forma simultánea. Por ejemplo, utilizando una máquina virtual en Windows, se puede instalar cualquier distribución de Linux.

*Ventajas de usar máquinas virtuales*

- **Crear cualquier sistema operativo:** La gran mayoría de software de máquinas virtuales, como es el caso de VMWare, permite instalar casi cualquier sistema operativo (Windows, Linux Mac OS, Android, Chrome OS, etc). De esta forma se puede disponer en el mismo equipo o servidor de distintas máquinas virtuales con los SO que sean necesarios.

- **Garantiza la independencia de cada entorno:** Una máquina virtual encapsula todo lo necesario para su funcionamiento dentro de un entorno que es independiente, tanto del sistema operativo desde la que es creada, como con otras máquinas virtuales diferentes en el mismo servidor.

- **Acceso a recursos exclusivos:** Cuando se crea una máquina virtual es necesario asignarle una serie de recursos como son la capacidad de proceso, la cantidad de memoria RAM o el espacio de almacenamiento. Esta asignación está limitada por el hardware físico de la máquina, pero una vez asignada una cantidad de los mismos, serán de uso exclusivo de esa máquina virtual.

- **Alto nivel de seguridad:** Entre las ventajas del uso de máquinas virtuales se debe destacar el alto grado de protección y seguridad que ofrecen. Una máquina virtual se aísla del propio sistema operativo en el que está instalada, por lo que cualquier problema de seguridad por malware, no afectará al servidor, equipo u otras máquinas virtuales.

- **Facilidad de exportación:** Cuando se crea una máquina virtual se están generando una serie de archivos que encapsulan todo lo necesario para su funcionamiento independiente. Por este motivo, es sencillo copiar o exportar esta máquina para utilizarla en otro entorno diferente

- **Reducción de costes:** Para las empresas la virtualización es ideal para reducir sus costes. Con la contratación de un servicio cloud se pueden crear diferentes máquinas virtuales para poder satisfacer todas las necesidades de la empresa. Dentro de la reducción de costes se tiene que no existen gastos de mantenimiento, configuración y actualización de servidores. Se ahorra dinero al no tener que contratar personal especializado en servidores y sistemas. No es necesario invertir en renovación de licencias de software o en actualizaciones de hardware. Ofrecen Escalabilidad y flexibilidad aportando una gran flexibilidad para la empresa.

*Desventajas de usar máquinas virtuales:*

- **Disminución del rendimiento:** La virtualización consiste en ejecutar de manera virtual un sistema operativo dentro de otro, por lo que se tiene una dependencia directa del host donde se instala. El rendimiento de una máquina virtual será inferior al del propio equipo o servidor físico en el que se instale. En algunos casos se hace necesaria la inversión en hardware para evitar este problema.

- **Complejidad de uso:** La estructura de una máquina virtual es compleja, sobre todo si se utiliza en sistemas donde hay interconexión con distintas redes y se utiliza una gran variedad de hardware. Configurar una máquina virtual en ciertos entornos requiere de conocimientos avanzados.

- **Coste elevado:** En comparación con el uso de contenedores, el coste de las máquinas virtuales es mayor, debido a que consumen más recursos que estos.
