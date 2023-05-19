# Taller 09
## *Wilmer Steven Farfán Castillo - 2194285*

## 1. ¿Cuál es el significado del término espera activa?:

El término *espera activa* se refiere a una técnica de sincronización de procesos en un SO. Ocurre cuando un proceso necesita esperar a que cierta condición se cumpla antes de continuar su ejecución, en lugar de bloquearse y ceder el control al sistema operativo, el proceso realiza iteraciones repetidas (bucles) para verificar continuamente si la condición deseada se ha cumplido. Durante la espera activa, el proceso utiliza la CPU para verificar la condición en lugar de quedarse inactivo. Esto implica que el proceso está "activamente esperando" que se cumpla la condición deseada. Una vez que se cumple la condición, el proceso puede continuar con la ejecución normal. La espera activa es útil cuando el tiempo de espera, esperado es corto y bloquear el proceso podría resultar en una pérdida de eficiencia o rendimiento. Sin embargo, debe usarse con precaución, debido a que puede consumir recursos de manera innecesaria, si la condición deseada tarda mucho en cumplirse.


## 2. ¿De qué manera se puede evitar la espera activa?: 

La espera activa puede evitarse mediante el uso de mecanismos de sincronización más eficientes y menos intensivos en recursos. Algunas alternativas para evitar la espera activa son:

- **Semáforos:** Los semáforos son variables especiales que permiten a los procesos controlar el acceso a recursos compartidos. Un proceso que necesita acceder a un recurso primero verifica el semáforo asociado. Si el semáforo indica que el recurso está disponible, el proceso puede continuar. De lo contrario, se bloquea hasta que el recurso se libere.

- **Variables de Condición:** Las variables de condición se utilizan para la sincronización de procesos en entornos de programación concurrente. Permiten a los procesos esperar hasta que se cumpla una determinada condición antes de continuar su ejecución. Los procesos pueden ponerse en espera en una variable de condición y ser despertados por otros procesos cuando se cumpla la condición deseada.

- **Monitores:** Los monitores son estructuras de datos que combinan variables de condición y protección mutua. Proporcionan un mecanismo seguro y fácil de usar para controlar el acceso a recursos compartidos. Los procesos solicitan acceso al monitor y se bloquean si otro proceso ya está dentro del monitor. El proceso actualmente dentro del monitor puede liberar el bloqueo y esperar en una variable de condición hasta que se cumpla una condición específica.

- **Colas de Mensajes:** Son estructuras de datos que permiten a los procesos comunicarse y sincronizarse mediante el envío y recepción de mensajes. En lugar de esperar activamente, un proceso puede poner un mensaje en una cola y continuar con su ejecución. Otro proceso puede leer el mensaje de la cola cuando esté listo para procesarlo.


## 3. Explique por qué los bloqueos mediante bucle sin fin no son apropiados para sistemas monoprocesador, pero se usan con frecuencia en los sistemas multiprocesador:

Los bloqueos mediante bucle sin fin, también conocidos como *espera activa*, no son apropiados para sistemas monoprocesador debido a que consumen de manera intensiva los recursos del procesador sin realizar ninguna tarea útil. En un sistema monoprocesador, solo hay una única unidad de procesamiento y, por lo tanto, solo un proceso puede ejecutarse a la vez. Si un proceso está en espera activa continuamente realizando verificaciones en un bucle, está utilizando el tiempo de CPU que podría ser utilizado por otros procesos para realizar tareas productivas.

En cambio, los bloqueos mediante bucle sin fin se utilizan con mayor frecuencia en sistemas multiprocesador. En un sistema multiprocesador, hay múltiples unidades de procesamiento disponibles, lo que permite que varios procesos se ejecuten simultáneamente en diferentes núcleos o procesadores. Cuando un proceso está en espera activa en un bucle, no monopoliza todos los recursos del sistema. Otros procesos pueden ejecutarse en los procesadores restantes y realizar tareas productivas. Además, en un sistema multiprocesador, la espera activa puede ser más eficiente en algunos casos en comparación con las técnicas de sincronización más complejas, como los bloqueos basados en interrupciones o las colas de mensajes, debido a la menor latencia de acceso a los recursos compartidos. Sin embargo, incluso en sistemas multiprocesador, el uso excesivo de bloqueos mediante bucle sin fin puede tener efectos negativos, como el consumo excesivo de energía y la degradación del rendimiento debido a la competencia por los recursos del sistema


## 4. Explique por qué las interrupciones no son apropiadas para implementar primitivas de sincronización en los sistemas multiprocesador:

Las interrupciones son eventos asincrónicos que ocurren en un sistema computacional cuando se produce una condición específica, como una interacción de I/O, un error de hardware o una solicitud de servicio del SO. En un sistema multiprocesador, las interrupciones no son apropiadas para implementar primitivas de sincronización eficientes por las siguientes razones:

- **Latencia y Sincronización:** Las interrupciones pueden introducir una latencia significativa en el sistema, ya que el procesador debe interrumpir su flujo de ejecución actual y cambiar a una rutina de interrupción para manejar el evento. Esta latencia puede ser variable y dificulta la sincronización precisa y oportuna entre múltiples procesadores, lo que puede afectar negativamente el rendimiento y la coherencia de los datos en un entorno multiprocesador.

- **Competencia por Recursos:** En un sistema multiprocesador, múltiples núcleos o procesadores pueden generar interrupciones simultáneamente, lo que puede conducir a una competencia por recursos compartidos, como colas de interrupciones o controladores de dispositivos. Esta competencia puede generar cuellos de botella y retrasos adicionales en la ejecución de las rutinas de interrupción y afectar el rendimiento general del sistema.

- **Problemas de Coherencia de Caché:** Los sistemas multiprocesador suelen utilizar cachés independientes para mejorar el rendimiento al reducir el tiempo de acceso a la memoria principal. Sin embargo, las interrupciones pueden introducir problemas de coherencia de caché, ya que un procesador que maneja una interrupción puede modificar datos compartidos en su caché local antes de que otros procesadores tengan conocimiento de ello. Esto puede dar lugar a inconsistencias en los datos y requerir mecanismos adicionales para mantener la coherencia de caché, lo que aumenta la complejidad y el costo del sistema.

- **Control de Prioridad y Escalonamiento:** Las interrupciones pueden tener diferentes niveles de prioridad y requerir un mecanismo de escalonamiento para determinar qué interrupción se maneja primero en caso de que varias ocurran simultáneamente. La implementación de un control de prioridad y escalonamiento eficiente en un sistema multiprocesador puede ser complicada y aumentar la complejidad del diseño y la gestión del sistema.


## 5. Describa como se puede utilizar la instrucción swap() para proporcionar un mecanismo de exclusión mutua que satisfaga el requisito de espera limitada:

La instrucción *swap()* se utiliza comúnmente para proporcionar un mecanismo de exclusión mutua que cumple con el requisito de espera limitada. La idea básica es utilizar la operación swap() para intercambiar el valor de una variable compartida con un valor específico que indica si un recurso está ocupado o disponible. Aquí se describe el enfoque general utilizando la instrucción swap():

- **Definir una Variable Compartida:** Se debe crear una variable compartida que actúe como semáforo o candado para controlar el acceso exclusivo a un recurso crítico. Esta variable suele ser de tipo entero y se inicializa a un valor específico que indica que el recurso está disponible.

- **Adquirir el Recurso:** Cuando un proceso desea acceder al recurso crítico, primero intenta adquirirlo. Esto implica usar la instrucción swap() para cambiar el valor de la variable compartida a un estado que indique que el recurso está ocupado. Por ejemplo, se puede utilizar la función swap() para intercambiar el valor de la variable compartida con un número distinto de cero.

- **Verificar el Estado del Recurso:** Después de realizar la operación swap(), el proceso verifica el valor original de la variable compartida. Si el valor original indica que el recurso estaba disponible, el proceso ha adquirido el recurso y puede continuar con su ejecución. Si el valor original indica que el recurso ya estaba ocupado, el proceso debe esperar.

- **Espera Limitada:** Si el proceso encuentra que el recurso está ocupado, en lugar de realizar una espera activa con un bucle sin fin, puede esperar de manera limitada utilizando técnicas como "backoff exponencial". Esto implica esperar un tiempo breve, determinado aleatoriamente o mediante un esquema de incremento gradual, antes de intentar nuevamente adquirir el recurso. Esto reduce el consumo de recursos y evita bloquear completamente al proceso.

- **Liberar el Recurso:** Una vez que un proceso ha finalizado su trabajo con el recurso crítico, debe liberarlo para permitir que otros procesos lo utilicen. Esto se logra utilizando nuevamente la instrucción swap() para cambiar el valor de la variable compartida, restaurándolo a un estado que indique que el recurso está disponible.


## 6. Los servidores pueden diseñarse de modo que limiten el numero de conexiones abiertas. Explique cómo puede utilizar un servidor los semáforos para limitar el numero de conexiones concurrentes:

Para limitar el número de conexiones concurrentes en un servidor, se pueden utilizar semáforos como una herramienta eficaz de control de acceso. Para ello se debe:

- **Definir un Semáforo:** Debe actuar como un contador para el número de conexiones concurrentes permitidas. Este semáforo se inicializa con un valor que representa el límite máximo de conexiones que el servidor puede manejar simultáneamente.

- **Controlar el Acceso al Semáforo:** Antes de que un cliente intente establecer una conexión con el servidor, se debe solicitar acceso al semáforo. Si el valor del semáforo es mayor a cero, lo que indica que hay conexiones disponibles, el cliente puede proceder a establecer la conexión. De lo contrario, si el valor del semáforo es cero, el cliente debe esperar.

- **Establecer la Conexión:** Una vez que el cliente ha obtenido acceso al semáforo, puede establecer la conexión con el servidor y comenzar a realizar sus solicitudes.

- **Liberar la Conexión:** Cuando un cliente ha terminado de utilizar la conexión y desea liberarla, debe solicitar acceso nuevamente al semáforo. Esto incrementa el valor del semáforo en uno, indicando que una conexión ha sido liberada y está disponible para otro cliente.

- **Controlar la Concurrencia:** El servidor debe asegurarse de que el número de conexiones concurrentes se mantenga dentro del límite establecido. 


## 7. Demuestre que los monitores y semáforos son equivalentes, en cuanto a que se pueden emplear para implementar los mismos tipos de problemas de sincronización

Los monitores y los semáforos son dos mecanismos de sincronización utilizados en programación concurrente que pueden ser empleados para implementar los mismos tipos de problemas. Ambos ofrecen una forma de coordinar la ejecución de hilos o procesos para evitar condiciones de carrera y asegurar la exclusión mutua.

Un monitor es una construcción de alto nivel que combina variables y procedimientos en una única entidad. Proporciona un mecanismo para restringir el acceso concurrente a los datos compartidos dentro del monitor utilizando bloqueo y espera condicional. Los hilos pueden acceder a los procedimientos del monitor y se aseguran de que solo un hilo tenga acceso a la vez mediante la adquisición y liberación automática del bloqueo del monitor. Esto evita la competencia y garantiza la consistencia de los datos compartidos.

Por otro lado, los semáforos son una primitiva de sincronización más básica que proporciona un mecanismo para controlar el acceso a recursos compartidos mediante contadores enteros. Un semáforo puede tener un valor inicial y se puede aumentar o disminuir en función de las operaciones de señal (signal) y espera (wait). Los hilos pueden solicitar acceso a un recurso llamando a la operación wait, que decrementa el contador del semáforo. Si el contador se vuelve negativo, el hilo se bloquea. Cuando un recurso se libera, se llama a la operación signal, que incrementa el contador del semáforo y desbloquea a un hilo en espera, si lo hay.

Aunque los monitores y los semáforos tienen diferencias en su estructura y forma de uso, pueden emplearse para implementar los mismos tipos de problemas de sincronización, como el problema del productor y consumidor, el problema de los lectores y escritores y el problema de los filósofos comensales, entre otros. Ambos mecanismos proporcionan las primitivas necesarias para coordinar y sincronizar el acceso a los recursos compartidos, evitando condiciones de carrera y garantizando una ejecución ordenada y consistente de los hilos o procesos concurrentes.


## 8. La exclusión mutua estricta en un monitor hace que el monitor de búfer limitado sea adecuadopara porciones pequeñas. Explique por qué es cierto esto:

La exclusión mutua estricta en un monitor implica que solo un hilo puede ejecutar una porción de código dentro del monitor a la vez. Esto se logra mediante el uso de un bloqueo interno que adquiere y libera automáticamente el monitor para garantizar que solo un hilo pueda acceder a los datos compartidos en un momento dado.

Cuando se trata de un monitor de búfer limitado, que es una estructura de datos con capacidad limitada utilizada para la comunicación entre hilos, la exclusión mutua estricta puede tener un impacto en el rendimiento debido a la limitación del tamaño del búfer. Si se requiere una exclusión mutua estricta para acceder al búfer, cada hilo que desee realizar una operación de escritura o lectura en el búfer deberá adquirir el bloqueo del monitor antes de realizar la operación y luego liberarlo una vez completada. Esto significa que, en un escenario donde hay varios hilos intentando acceder al búfer simultáneamente, solo un hilo puede realizar una operación a la vez, mientras que los demás deben esperar a que el bloqueo se libere.

Esto puede tener un impacto negativo en el rendimiento cuando se trata de porciones pequeñas de código dentro del monitor. Si, por ejemplo, el acceso al búfer se limita a una sola operación de escritura o lectura, los hilos pueden pasar más tiempo esperando para adquirir el bloqueo del monitor que realizando la operación real en el búfer. Esto puede generar un cuello de botella y disminuir la eficiencia y el rendimiento general del programa. En consecuencia, cuando se utiliza un monitor de búfer limitado, es importante considerar cuidadosamente el alcance y la granularidad de la exclusión mutua. Si la exclusión mutua estricta no es necesaria para todas las operaciones dentro del monitor, es posible ajustar el diseño y la implementación para permitir que varias operaciones pequeñas se realicen de manera concurrente sin bloquear a otros hilos.


## 9. ¿Por qué Windows y Linux utilizan bloqueos mediante bucle sin fin como mecanismo de sincronización solo en los sistemas multiprocesador y no en los sistemas monoprocesador?

Tanto Windows como Linux utilizan bloqueos mediante bucle sin fin, (también conocidos como "spin locks" o "busy-wait locks"), como mecanismo de sincronización en sistemas multiprocesador y no en sistemas monoprocesador debido a las diferencias fundamentales en la arquitectura y el funcionamiento de estos sistemas.

En un sistema monoprocesador, solo hay un núcleo de procesador disponible, lo que significa que solo un hilo puede ejecutarse a la vez. En este escenario, si un hilo adquiere un bloqueo y otro hilo intenta adquirirlo simultáneamente, este último simplemente se quedará esperando hasta que el primer hilo libere el bloqueo. No hay necesidad de un bucle sin fin ya que el planificador del sistema operativo se encargará de programar los hilos de manera que no haya condiciones de carrera.

Por otro lado, en un sistema multiprocesador, hay varios núcleos de procesador disponibles, lo que permite la ejecución simultánea de múltiples hilos en diferentes núcleos. En este caso, si un hilo adquiere un bloqueo y otro hilo intenta adquirirlo simultáneamente, puede ocurrir una condición de carrera si no se toman precauciones adicionales. El uso de bucles sin fin en los sistemas multiprocesador es una técnica de sincronización llamada "espera activa" (spin-waiting), donde un hilo que no puede adquirir un bloqueo no se bloquea ni se pone en espera, sino que realiza un bucle continuo de verificación hasta que el bloqueo se libere. Esto evita el costo de cambio de contexto que se produce al pasar de un hilo bloqueado a otro hilo listo para ejecutarse. Los bucles sin fin permiten al hilo seguir verificando rápidamente si el bloqueo se ha liberado y adquirirlo tan pronto como esté disponible.

Sin embargo, el uso de bucles sin fin no es eficiente en sistemas monoprocesador, ya que el hilo que espera activamente está consumiendo ciclos de CPU sin hacer un progreso real, lo que puede degradar el rendimiento general del sistema. En un sistema monoprocesador, es más eficiente y apropiado utilizar mecanismos de bloqueo que permitan al hilo ponerse en espera y ceder el procesador a otros hilos hasta que el bloqueo se libere.
