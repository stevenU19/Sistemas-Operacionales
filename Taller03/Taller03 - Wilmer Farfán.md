# TALLER
## WILMER STEVEN FARFÁN CASTILLO - 2194285

## **1. En entornos compartidos, los usuarios comparten el sistema. Esto puede dar lugar a varios problemas de seguridad. Mencione dos problemas y explíquelos. Es posible asegurar el mismo grado de seguridad en un sistema compartido que en un sistema dedicado. Explique su respuesta.**

En un entorno compartido, pueden surgir varios problemas de seguridad. Uno de ellos es el control de usuarios, puesto que si no se establece adecuadamente los roles, alguno puede tener acceso completo al control del sistema, dejando vulnerable la información contenida ahí. Y derivado de este problema, también se encuentra el acceso completo a los archivos y programas de los otros usuarios, lo cual genera un hueco de seguridad puesto que se pueden eliminar archivos importantes o inclusive instalar malware. 

Dentro de un entorno compartido, no se puede asegurar el mismo grado de seguridad en un sistema compartido, puesto que se deben manejar muchos usuarios y cada uno de ellos pueden descuidar sus credenciales, además de tener el poder para realizar cambios en el sistema. Por otro lado, en un sistema dedicado no se deben compartir recursos con otros usuarios, lo que origina que en el sistema compartido posea problemas para ejecutar tareas porque no tiene a disposición todos los recursos físicos disponibles. Sin embargo, tomando medidas de seguridad, como la instalación de software especializado en seguridad, es posible aumentar el grado de seguridad del sistema compartido pero nunca más seguro que uno dedicado.


## **2. Un problema común en los OS es la utilización de recursos. Enumere los recursos que deben gestionarse en las siguientes máquinas (explique porqué):**

- Sistemas embebidos: *En un sistema embebido, los recursos que se deben gestionar son la memoria, el procesador y el almacenamiento, puesto que estos tipos de sistemas están diseñados para la ejecución de una tarea específica, así que poseen ciertas limitaciones.*

- Mainframe: *En un mainframe, el OS debe gestionar el manejo de grandes cantidades de información y cientos de miles de peticiones al sistema. Por ello, cobra importancia el manejo adecuado de la conectividad de la red para asegurar la disponibilidad. Y además, el manejo de procesador, memoria y almacenamiento para que mainframe pueda gestionarse de la forma más eficiente posible.*

- Workstation: *Son estaciones de trabajo diseñadas para un uso intensivo de la máquina. Por ello, el OS debe gestionar los recursos como procesador, memoria, almacenamiento y tarjeta gráfica, buscando el mayor rendimiento posible.*

- Server: *En un server, el OS debe gestionar adecuadamente el procesador, la memoria, el almacenamiento y la conectividad de la red, para el manejo de servicios y usuarios. El OS debe garantizar disponibilidad y un gran rendimiento*

- Mobile: *Los dispositivos móviles están diseñados para la ejecución de diversa tareas en el día. El OS se debe encargar de gestionar los recursos como el almacenamiento, la memoria, el procesador, la conexión a internet y la batería. La batería toma bastante relevancia, por ello el OS debe buscar el mejor rendimiento posible, consumiendo menor cantidad de energía posible.*


## **3. Caracterice dos casos de uso para implementar un OS para servidor y PC:**

- *Implementación de un OS para un computador personal:* Un sistema operativo para este tipo de producto, está diseñado principalmente para el manejo de los recursos con fines comunicativos, laborales y de entretenimiento. Un usuario generalmente utilizará su dispositivo para la visualización de contenido multimedia, streaming, ejecución de videojuegos, pero además el uso de navegadores, editores de texto, correo electrónico, navegación por internet entre otras. El OS debe ofrecer rapidez, una interfaz agradable y conectividad de red eficiente.

- *Implementación de un OS para un servidor:* A diferencia de un SO para un PC personal, en un servidor no radica importancia en la reproducción de contenido sino en el manejo de información, servicios de almacenamiento, gestión de bases de datos, gestión de aplicaciones. Por ello, un SO debe ofrecer confiabilidad, seguridad, servicios de virtualización, gestión remota. 


## **4. Compare las diferencias entre multiprocesamiento simétrico y asimétrico:**

El **multiprocesamiento simétrico** consiste en ejecutar la tarea en un sistema operativo, todos los procesadores tienen la misma arquitectura; En su forma de procesar, toma cada uno de los procesos de una cola; Se comunican con otro procesador mediante una memoria compartida; En caso de una falla en el procesador, la capacidad de computación del sistema se reduce; El multiprocesador asimétrico es complejo, debido a que todos los procesadores deben sincronizarse para mantener el equilibrio de la carga.

En cambio el **multiprocesamiento asimétrico**, se tiene solo un procesador maestro que ejecuta las tareas del sistema operativo; El procesador maestro asigna procesos a procesadores esclavos; Los procesadores pueden tener la misma o diferente arquitectura; Los procesadores no se comunican entre sí, puesto que están controlados por el procesador maestro; En caso de una falla, se envía un esclavo al procesador maestro para continuar con la ejecución. Si el esclavo falla, la tarea cambia a otros procesadores; El multiprocesador asimétrico es simple, porque el procesador maestro accede a la estructura de los datos.


## **5. Enumere los requerimientos para que dos maquinas se junten en un cluster y provean un servicio de alta disponibilidad (HA):**

Para implementar una solución de alta disponibilidad, debe planificar y configurar un clúster. Un clúster agrupa sistemas y recursos en un entorno de alta disponibilidad y debe cumplir con ciertos requerimientos:

- Conectividad: Cada una de las máquinas del clúster deben estar conectadas a una red de confiable alta velocidad.

- Administración y monitoreo: Es un requerimiento que busca controlar el comportamiento del cluster, detectar y solucionar problemas en tiempo real.

- Redundancia: Consiste en ejecutar en varias máquinas los mismos servicios, tener las mismas configuraciones y la misma información, para que en caso de falla, una de ellas reemplace a la otra. Así se sigue brindando el servicio y brinda de más tiempo para que la empresa pueda solucionar los fallos.

- Tolerancia a fallos: Las máquinas del cluster deben tener detección de fallas de hardware o software, para la recuperación automática de servicios.

- Balanceo de carga: Consiste en distribuir la carga de trabajo entre las máquinas del cluster de manera equitativa, con esto se evita la sobrecarga del sistema.


## **6. Compare las diferencias entre una excepción y una interrupción.**

Una interrupción se suele usar como recurso para atender necesidades de los sistemas operativos, procesos de usuarios, peticiones de usuarios.

Una excepción ocurre en una situación distinta, en la cual no suele haber solución por parte del sistema operativo, por ejemplo una división entre cero. Algunas excepciones causan interrupciones, pero si la excepción no se aborda dentro del software, se termina el proceso del hilo en curso.


## **7. El DMA (acceso directo a memoria) se usa en dispositivos I/O para evitar uso innecesario de la CPU:**

- **¿Como interactúa la CPU con el dispositivo para coordinar la transferencia?:**  La CPU establece una serie de registros de configuración y control en el controlador DMA del dispositivo. Estos registros incluyen la dirección de memoria donde se almacenarán los datos que se transfirieron, el tamaño de la transferencia, la dirección del dispositivo I/O que va a enviar o recibir los datos.

- **¿Como sabe la CPU que las operaciones de memoria se han completado?:**  Una vez que se completa la transferencia, el controlador DMA del dispositivo establece un bit de finalización.  Este se almacena en el registro de control DMA para indicar que la transferencia ha terminado. La CPU se encarga de consultar este bit.


## **8. Identifique dos razones por las que la cache es útil. ¿Qué problemas resuelve y causa?:**

- Mejora el rendimiento: La caché permite que la CPU acceda a los datos e instrucciones con mucha mayor rapidez, que si tuviera que acceder directamente a la RAM. La caché reduce este número de accesos de memoria, aumentando así la velocidad de aquella información que realmente necesita acceder a la RAM.

- Ahorro de energía: Como la caché permite que la CPU tenga un acceso más rápido a los datos, reduce la cantidad de tiempo para que la CPU termine una tarea. Por ello la CPU realiza menos procesos que ayuda con el ahorro de energía.


## **9. Explique con un ejemplo, como se manifiesta el problema de mantener la coherencia de los datos de cache en los siguientes entornos:**

- *Sistema distribuido:* En un sistema distribuido, varios nodos pueden tener su propia caché local. Para mantener la coherencia entre la actualización de los datos de un nodo y otro, se deben utilizar protocolos que garanticen la actualización de la caché en todos los nodos. Se destacan los protocolos como el MESI (Modified, Exclusive, Shared, Invalid) o el protocolo MSI. 

- *Sistema multiprocesador:* En este tipo de sistema, varios procesadores pueden compartir la misma memoria principal y tener su propia caché. Para mantener la coherencia en caso de que un procesador tenga una caché distinta o actualizada del otro, dado a un proceso distinto se deben utilizar protcolos como los citados anteriormente

- *Sistema de un solo procesador:* Se puede producir un problema de coherencia de caché en un solo procesador, en el caso que existan varias capas de caché. Si una copia de un dato se encuentra en una caché de nivel superior y otra copia se encuentra en una caché de nivel inferior, pueden producirse inconsistencias si la caché de no se actualiza correctamente. Los protocolos de coherencia resuelven este problema.
