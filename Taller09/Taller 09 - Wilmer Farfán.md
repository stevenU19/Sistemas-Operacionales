# Taller 09
## *Wilmer Steven Farfán Castillo - 2194285*


## 1. ¿Cuál es el significado del termino espera activa?:
El término "espera activa" se refiere a una técnica de sincronización de procesos en un sistema operativo. Cuando un proceso necesita esperar a que cierta condición se cumpla antes de continuar su ejecución, puede optar por la espera activa. En lugar de bloquearse y ceder el control al sistema operativo, el proceso realiza iteraciones repetidas (bucles) para verificar continuamente si la condición deseada se ha cumplido.

Durante la espera activa, el proceso utiliza la CPU para verificar la condición en lugar de quedarse inactivo. Esto implica que el proceso está "activamente esperando" que se cumpla la condición deseada. Una vez que se cumple la condición, el proceso puede continuar con su ejecución normal.

La espera activa puede ser útil en ciertos casos, especialmente cuando el tiempo de espera esperado es corto y bloquear el proceso podría resultar en una pérdida de eficiencia o rendimiento. Sin embargo, debe usarse con precaución, ya que puede consumir recursos de manera innecesaria si la condición deseada tarda mucho en cumplirse.
