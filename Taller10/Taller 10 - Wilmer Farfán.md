# Taller 10
## *Wilmer Steven Farfán Castillo - 2194285*

![Prioridades](https://github.com/stevenU19/Sistemas-Operacionales/blob/6dc043cf91c75a2a866787a6315ff40877fd77b0/Taller10/Interbloqueo.PNG)

## 1. Considere la imagen, demuestre que las cuatro condiciones necesarias para que se produzca un interbloqueo se cumplen:

La situación de interbloqueo puede generarse a partir de cuatro condiciones. Según la imagen anterior, se puede demostrar que las condiciones se cumplen debido a:

- **Exclusión Mutua:** Como se puede apreciar, las dos calles y de las dos carreras, sólo pueden ser utilizadas por el tráfico que transita por allí. En cambio, está haciendo utilizado por muchos procesos a la vez. Por lo tanto, el resto de vehículos (procesos) deben esperar para pode continuar con su recorrido.

- **Retención y Espera:** Los vehículos cuentan con un recurso que es la vía por dónde transitan, pero en cada intersección deben esperar puesto que el otro recurso (la vía) está siendo utilizada por otros vehículos. Es decir, que el vehículo (proceso) que está en cada intersección retiene el recurso, mientras espera que el resto de vehículos se muevan para poder seguir con su "ejecución".

- **Sin Desalojo:** Los vehículos de las intersecciones están retenidos y no es posible que continuen, dado a que en la siguiente intersección existe un bloqueo. Lo que quiere decir que el proceso no puede liberar los recursos que tiene asignados para que otros procesos los utilicen, provocando el atasco en el tráfico.

- **Espera Circular:** Es evidente que la imagen presenta un ciclo de procesos, que están esperando por un recurso, que a su vez es retenido por otro proceso en el ciclo. El problema del bloqueo de cada intersección, crea una situación en la que ningún proceso (vehículo) puede avanzar, debido a que se encuentran en la espera del siguiente recurso en el ciclo.


## 2. Considere la imagen, enuncie una regla simple para evitar los interbloqueos en este sistema:

Una regla para evitar este interbloqueo es utilizar la asignación jerárquica de recursos, en la cual el proceso solo puede solicitar un recurso si no está utilizando ningún otro recurso. De esta manera se asegura que no se creen ciclos de espera y que los procesos no retengan recursos mientras esperan por otros. Además la utilización de semáforos pueden evitar los interbloqueos, porque son variables especiales que se utilizan para controlar el acceso a los recursos compartidos. Al utilizar semáforos correctamente, se pueden aplicar estrategias de exclusión mutua y coordinación entre los procesos para evitar situaciones de interbloqueo.


## 3. Explique como se cumplen las condiciones básicas de interbloqueo en el problema de la cena de los filósofos:

El problema de la cena de los filósofos es un clásico en la programación concurrente que ilustra los desafíos asociados con la sincronización de procesos en un sistema compartido. En este problema, se imagina que hay cinco filósofos sentados alrededor de una mesa circular, y entre cada par de filósofos hay un tenedor. Cada filósofo alterna entre dos estados: pensando y comiendo. El objetivo es evitar el interbloqueo y la inanición para asegurar que todos los filósofos puedan comer.

Las condiciones básicas de interbloqueo en este problema se pueden explicar de la siguiente manera:

1. Adquisición simultánea de recursos: Si todos los filósofos intentan tomar sus tenedores al mismo tiempo, es posible que todos logren adquirir un tenedor pero no puedan obtener el segundo, causando un interbloqueo. Para evitar esto, se puede establecer un protocolo donde los filósofos intenten adquirir los tenedores en un orden específico, por ejemplo, siempre tomando primero el tenedor de su izquierda y luego el de su derecha.

2. Exclusión mutua: Para evitar que los filósofos tomen los tenedores de manera simultánea, se debe garantizar que solo un filósofo pueda tener acceso a un tenedor en un momento dado. Esto se puede lograr mediante el uso de semáforos o mutex (exclusión mutua) para controlar el acceso a los tenedores compartidos.

3. Espera circular: La espera circular ocurre cuando cada filósofo toma el tenedor a su izquierda y espera a que el tenedor a su derecha esté disponible. Si todos los filósofos hacen esto al mismo tiempo, se genera un interbloqueo. Para evitar la espera circular, se puede establecer una regla en la que los filósofos solo intenten tomar los tenedores si ambos están disponibles, de lo contrario, deben soltar el tenedor que ya tienen.

4. Liberación de recursos: Para evitar la inanición, es importante que los filósofos no retengan los tenedores indefinidamente después de terminar de comer. Después de que un filósofo haya terminado de comer, debe soltar los tenedores para que estén disponibles para otros filósofos que los necesiten.

En resumen, para cumplir las condiciones básicas de interbloqueo en el problema de la cena de los filósofos, se deben implementar mecanismos de sincronización, como semáforos o mutex, para garantizar la exclusión mutua y evitar la espera circular. Además, se debe establecer un orden o protocolo para la adquisición de tenedores y asegurarse de que los recursos sean liberados correctamente después de su uso. Estas medidas ayudarán a evitar el interbloqueo y la inanición en el sistema.

## 4. Explique como podría evitarse los interbloqueos impidiendo que se cumpla una de las condiciones en el problema de la cena de los filósofos:

## 5. Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tiempo de ejecución adicional necesario:

## 6. Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tasa de procesamiento del sistema:

## 7. Considere un sistema que tiene cuatro recursos del mismo tipo, compartidos entre tres procesos; cada proceso necesita como máximo dos recursos. Demuestre que el sistema esta libre de interbloqueos:

## 8. Considere el problema de los filósofos, los palillos se colocan en el centro de la mesa y cualquier filósofo puede usar dos palillos, la solicitud de los palillos se hace de una en una. Describa una regla simple para determinar si una solicitud podría ser satisfecha sin dar lugar a interbloqueos, dada la asignación actual de palillos a los filósofos:

## 9. ¿Cuál es la suposición optimista realizada en el algoritmo de detección de interbloqueos y cómo podría violarse esta suposición?
