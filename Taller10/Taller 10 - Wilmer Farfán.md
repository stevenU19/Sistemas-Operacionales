# Taller 10
## *Wilmer Steven Farfán Castillo - 2194285*

## 1. Considere la imagen, demuestre que las cuatro condiciones necesarias para que se produzca un interbloqueo se cumplen:

![Prioridades](https://github.com/stevenU19/Sistemas-Operacionales/blob/6dc043cf91c75a2a866787a6315ff40877fd77b0/Taller10/Interbloqueo.PNG)

La situación de interbloqueo puede generarse a partir de cuatro condiciones. Según la imagen anterior, se puede demostrar que las condiciones se cumplen debido a:

- **Exclusión Mutua:** Como se puede apreciar, las dos calles y de las dos carreras, sólo pueden ser utilizadas por el tráfico que transita por allí. En cambio, está haciendo utilizado por muchos procesos a la vez. Por lo tanto, el resto de vehículos (procesos) deben esperar para pode continuar con su recorrido.

- **Retención y Espera:** Los vehículos cuentan con un recurso que es la vía por dónde transitan, pero en cada intersección deben esperar puesto que el otro recurso (la vía) está siendo utilizada por otros vehículos. Es decir, que el vehículo (proceso) que está en cada intersección retiene el recurso, mientras espera que el resto de vehículos se muevan para poder seguir con su "ejecución".

- **Sin Desalojo:** Los vehículos de las intersecciones están retenidos y no es posible que continuen, dado a que en la siguiente intersección existe un bloqueo. Lo que quiere decir que el proceso no puede liberar los recursos que tiene asignados para que otros procesos los utilicen, provocando el atasco en el tráfico.

- **Espera Circular:** Es evidente que la imagen presenta un ciclo de procesos, que están esperando por un recurso, que a su vez es retenido por otro proceso en el ciclo. El problema del bloqueo de cada intersección, crea una situación en la que ningún proceso (vehículo) puede avanzar, debido a que se encuentran en la espera del siguiente recurso en el ciclo.


## 2. Considere la imagen, enuncie una regla simple para evitar los interbloqueos en este sistema:

Una regla para evitar este interbloqueo es utilizar la asignación jerárquica de recursos, en la cual el proceso solo puede solicitar un recurso si no está utilizando ningún otro recurso. De esta manera se asegura que no se creen ciclos de espera y que los procesos no retengan recursos mientras esperan por otros. Además la utilización de semáforos pueden evitar los interbloqueos, porque son variables especiales que se utilizan para controlar el acceso a los recursos compartidos. Al utilizar semáforos correctamente, se pueden aplicar estrategias de exclusión mutua y coordinación entre los procesos para evitar situaciones de interbloqueo.


## 3. Explique como se cumplen las condiciones básicas de interbloqueo en el problema de la cena de los filósofos:

El problema de la cena de los filósofos ilustra los desafíos asociados con la sincronización de procesos en un sistema compartido. Las condiciones básicas de interbloqueo en este problema se pueden explicar de la siguiente manera:

- **Adquisición Simultánea de Recursos:** Si todos los filósofos intentan tomar sus tenedores al mismo tiempo, es posible que todos logren adquirir un tenedor pero no puedan obtener el segundo, causando un interbloqueo. Para evitar esto, se puede establecer un protocolo donde los filósofos intenten adquirir los tenedores en un orden específico, por ejemplo, siempre tomando primero el tenedor de su izquierda y luego el de su derecha.

- **Exclusión Mutua:** Para evitar que los filósofos tomen los tenedores de manera simultánea, se debe garantizar que solo un filósofo pueda tener acceso a un tenedor en un momento dado. Esto se puede lograr mediante el uso de semáforos o mutex (exclusión mutua) para controlar el acceso a los tenedores compartidos.

- **Espera Circular:** La espera circular ocurre cuando cada filósofo toma el tenedor a su izquierda y espera a que el tenedor a su derecha esté disponible. Si todos los filósofos hacen esto al mismo tiempo, se genera un interbloqueo. Para evitar la espera circular, se puede establecer una regla en la que los filósofos solo intenten tomar los tenedores si ambos están disponibles, de lo contrario, deben soltar el tenedor que ya tienen.

- **Liberación de Recursos:** Para evitar la inanición, es importante que los filósofos no retengan los tenedores indefinidamente después de terminar de comer. Después de que un filósofo haya terminado de comer, debe soltar los tenedores para que estén disponibles para otros filósofos que los necesiten.


## 4. Explique cómo podría evitarse los interbloqueos impidiendo que se cumpla una de las condiciones en el problema de la cena de los filósofos:

Una forma de evitar los interbloqueos en el problema de la cena de los filósofos es mediante la implementación de la *exclusión mutua*. En las cuales se debe limitar el número de filósofos que pueden estar sentados a la vez, permitiendo que solo N-1 filósofos se sienten a la mesa al mismo tiempo, donde N es el número total de filósofos. Esto asegura que siempre haya al menos un filósofo disponible para comer, evitando así los interbloqueos. Los filósofos pueden turnarse para sentarse y comer.

Por otro lado, el establecer un orden de prioridad para los tenedores, en lugar de permitir que cada filósofo tome los tenedores simultáneamente. Se puede realizar por medio de una orden de prioridad para adquirir los tenedores. Por ejemplo, se puede asignar un número único a cada tenedor y requerir que los filósofos tomen primero el tenedor con el número más bajo y luego el otro. De esta manera se evita el interbloqueo, para cuando todos los filósofos intentan tomar el tenedor con el número más bajo al mismo tiempo, haciendo que solo uno de ellos pueda hacerlo y hacer a los demás esperar.


## 5. Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tiempo de ejecución adicional necesario:

El esquema de espera circular y los esquemas de evasión de interbloqueos son técnicas utilizadas para resolver el problema del interbloqueo en sistemas concurrentes. Sin embargo, difieren en su enfoque y en el tiempo de ejecución adicional necesario para evitar o recuperarse del interbloqueo.

- **Esquema de Espera Circular:** En este enfoque, cada proceso solicita los recursos que necesita y, si no están disponibles, espera hasta que estén libres. Si un proceso se encuentra con un recurso ocupado, entra en un estado de espera circular, donde espera hasta que todos los recursos que necesita estén disponibles. Este enfoque puede llevar a un interbloqueo si los procesos se quedan esperando indefinidamente. El tiempo de ejecución adicional necesario en este esquema depende de la duración de la espera circular. Si los recursos requeridos no están disponibles durante un largo período, el tiempo de ejecución adicional puede ser considerable.

- **Esquema de Evasión de Interbloqueos:** Los esquemas de evasión de interbloqueos se basan en tomar acciones para evitar que ocurra un interbloqueo o para recuperarse de él si ya ha ocurrido. Estos esquemas pueden incluir técnicas como la asignación dinámica de recursos, el reordenamiento de solicitudes o la liberación de recursos. El tiempo de ejecución adicional necesario en los esquemas de evasión de interbloqueos varía según la técnica utilizada y la eficacia de la estrategia implementada. Algunas técnicas pueden introducir un tiempo adicional mínimo, mientras que otras pueden requerir una cantidad significativa de tiempo para detectar y resolver el interbloqueo.


## 6. Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tasa de procesamiento del sistema:

En términos de la tasa de procesamiento del sistema, el esquema de espera circular y los esquemas de evasión de interbloqueos también difieren en su impacto. A continuación, te proporcionaré una comparación en relación con la tasa de procesamiento del sistema.

- **Esquema de Espera Circular:** En el esquema de espera circular, si se produce un interbloqueo, los procesos se quedan esperando indefinidamente hasta que se liberen los recursos que necesitan. Esto puede resultar en una disminución significativa en la tasa de procesamiento del sistema. Los recursos pueden permanecer inactivos mientras los procesos están bloqueados, lo que impide que otros procesos los utilicen de manera efectiva. Como resultado, la tasa de procesamiento general del sistema se ve afectada negativamente.

- **Esquema de Evasión de Interbloqueos:** Los esquemas de evasión de interbloqueos están diseñados para prevenir o resolver el interbloqueo de manera más activa y eficiente. Estos esquemas pueden permitir un mejor uso de los recursos y, por lo tanto, mejorar la tasa de procesamiento del sistema. Por ejemplo, técnicas como la asignación dinámica de recursos o la reestructuración de solicitudes pueden evitar que se produzcan situaciones de interbloqueo, lo que permite que los procesos continúen ejecutándose sin interrupciones innecesarias. En consecuencia, la tasa de procesamiento del sistema puede mantenerse a niveles más altos.


## 7. Considere un sistema que tiene cuatro recursos del mismo tipo, compartidos entre tres procesos; cada proceso necesita como máximo dos recursos. Demuestre que el sistema esta libre de interbloqueos:

Para este caso particular, se tienen tres procesos y cuatro recursos del mismo tipo. Cada proceso puede necesitar hasta un máximo de dos recursos. Si se quieren evitar interbloqueos, se requiere que al menos un proceso pueda adquirir todos los recursos que necesita para completar su ejecución.

1. **Asignación: P1 - 2 recursos, P2 - 2 recursos, P3 - 0 recursos:** En este caso, P1 y P2 obtienen todos los recursos que necesitan, y P3 no obtiene recursos. No hay interbloqueo, ya que P1 y P2 pueden completar su ejecución sin problemas.

2. **Asignación: P1 - 2 recursos, P2 - 0 recursos, P3 - 2 recursos:** Aquí, P1 y P3 obtienen todos los recursos que necesitan, mientras que P2 no obtiene recursos. No hay interbloqueo, ya que P1 y P3 pueden ejecutarse sin problemas.

3. **Asignación: P1 - 0 recursos, P2 - 2 recursos, P3 - 2 recursos:** En este caso, P2 y P3 obtienen todos los recursos que necesitan, mientras que P1 no obtiene recursos. No hay interbloqueo, ya que P2 y P3 pueden completar su ejecución sin problemas.

En todas las posibles asignaciones de recursos, al menos un proceso puede obtener todos los recursos que necesita. Por lo tanto, no hay posibilidad de que se produzca un estado de interbloqueo. Por lo tanto se puede concluir que el sistema está libre de interbloqueos.


## 8. Considere el problema de los filósofos, los palillos se colocan en el centro de la mesa y cualquier filósofo puede usar dos palillos, la solicitud de los palillos se hace de una en una. Describa una regla simple para determinar si una solicitud podría ser satisfecha sin dar lugar a interbloqueos, dada la asignación actual de palillos a los filósofos:

Para determinar si una solicitud de palillos podría ser satisfecha sin dar lugar a interbloqueos en el problema de los filósofos, se puede aplicar el siguiente algoritmo:
1. **Cada filósofo debe tener acceso a dos palillos para poder comer.**
2. **Cuando un filósofo realiza una solicitud de palillos:**
- Si ambos palillos solicitados están disponibles, entonces la solicitud se puede satisfacer de inmediato.
- Si solo uno de los palillos solicitados está disponible, el filósofo debe esperar hasta que el otro palillo esté disponible.
- Si ninguno de los palillos solicitados está disponible, el filósofo debe esperar hasta que ambos palillos estén disponibles.
3. **Si un filósofo está esperando que ambos palillos estén disponibles y uno de los palillos solicitados es liberado por otro filósofo, pero el segundo palillo no está disponible, el filósofo debe liberar el palillo que tiene y volver al estado de espera inicial.**

Así se evita el interbloqueo, garantizando que un filósofo solo pueda comer cuando tiene acceso a ambos palillos.


## 9. ¿Cuál es la suposición optimista realizada en el algoritmo de detección de interbloqueos y cómo podría violarse esta suposición?

El algoritmo de detección de interbloqueos, conocido como el algoritmo del banquero, se basa en la suposición optimista de que no ocurrirán solicitudes adicionales de recursos después de la asignación inicial. El algoritmo asume que, una vez que se asignan los recursos iniciales a los procesos, no se realizarán más solicitudes de recursos. Esto implica que el sistema no experimentará ninguna variación en las necesidades de recursos de los procesos en el futuro. Sin embargo, esta suposición puede ser violada en varias situaciones:

- **Nuevas Solicitudes de Recursos:** Si los procesos pueden realizar solicitudes adicionales de recursos después de la asignación inicial, la suposición optimista se viola. Por ejemplo, si un proceso asignado inicialmente con un número limitado de recursos solicita más recursos, el algoritmo de detección de interbloqueos podría no ser capaz de manejar esta situación.

- **Liberación Incorrecta de Recursos:** Si un proceso libera incorrectamente los recursos asignados antes de su finalización, puede dar lugar a nuevas solicitudes de recursos. Estas solicitudes adicionales pueden violar la suposición de no solicitud futura y afectar la capacidad del algoritmo para detectar y resolver interbloqueos.

- **Recursos Compartidos:** Si los recursos asignados inicialmente son compartidos entre diferentes procesos, existe la posibilidad de que otros procesos soliciten esos recursos compartidos después de la asignación inicial. Si esto ocurre, la suposición de no solicitud adicional se viola y puede dificultar la detección y resolución de interbloqueos.

