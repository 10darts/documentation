.. _options:

========
Opciones
========

La plataforma de **10darts** permite personalizar una gran variedad de valores
que determinan el funcionamiento del sistema. Las opciones que se pueden
configurar son las siguientes:

.. glossary::

    Activate/deactivate fake push notifications
        Permite activar/desactivar el modo de notificaciones push falsas, es decir
        en el que no se enviará ninguna notification (defecto: ``0``).

    Activate/deactivate timezone restriction for Geo Ripple
        Permite activar/desactivar la restricción de zona horaria del
        algoritmo de *Geo Ripple* (defecto: ``1``).

    Period (in seconds) to check relevance in Geo Ripple
        Cada cuantos segundos se comprueba la relevancia de la campaña cuando se
        usa el algoritmo de *Geo Ripple* (defecto: ``900``).

    Hour when starts the limit for checking relevance in Geo Ripple
        Hora del día en la que empieza a limitarse la comprobación de relevancia
        del algoritmo de Geo Ripple (defecto: ``23``).

    Hour when finish the limit for checking relevance in Geo Ripple
        Hora del día en la que finaliza a limitarse la comprobación de relevancia
        del algoritmo de Geo Ripple (defecto: ``7``).

    Maximum number of seconds from the creation of the notification to check relevance in Geo Ripple
        Tiempo total en segundos durante el cual se comprobará la relevancia de una
        campaña usando *Geo Ripple* (defecto: ``28800``)

    Minimum size of the control group in Geo Ripple
        Tamaño mínimo que ha de tener el grupo de control del algoritmo de
        *Geo Ripple*. (defecto: ``250``)

    Percentage for de control group in Geo Ripple
        Porcentaje de usuarios que se usarán del total como grupo de control
        en el algoritmo de *Geo Ripple* (defecto: ``10.0``)

    Initial previous radius for notifications with ripple effect (meters)
        Radio en metros previo inicial que se usará en el algoritmo de
        *Geo Ripple* (defecto: ``1000``)

    Initial radius for notifications with ripple effect (meters)
        Radio en metros inicial que se usará en el algoritmo de
        *Geo Ripple* (defecto: ``2000``)

    Maximum number of seconds from the creation of the notification to check relevance in Progressive Ripple
        Tiempo total en segundos durante el cual se comprobará la relevancia de una
        campaña usando *Progressive Ripple* (defecto: ``28800``)

    Period (in seconds) to check relevance in Progressive Ripple
        Cada cuantos segundos se comprueba la relevancia de la campaña cuando se
        usa el algoritmo de *Progressive Ripple* (defecto: ``900``).

    Maximum number of seconds from the creation of the notification to check relevance in Simple Ripple
        Tiempo total en segundos durante el cual se comprobará la relevancia de una
        campaña usando *Simple Ripple* (defecto: ``28800``)

    Period (in seconds) to check relevance in Simple Ripple
        Cada cuantos segundos se comprueba la relevancia de la campaña cuando se
        usa el algoritmo de *Simple Ripple* (defecto: ``900``).

    Number of hours from last activity to be able to be selected as active device
        Periodo de tiempo en horas durante el que el usuario ha de haber mostrado algún tipo de
        actividad para ser considerado activo a efectos de los algoritmos de
        *Ripple* (defecto: ``48``).

    Number of seconds to delay the churn check
        Numero de segundos desde que se lanza una campaña hasta que se comprueba
        su churn asociado (defecto: ``43200``)

    Minimum percentage of openings to be taken into account for relevance
        Porcentaje mínimo de pushes seguidos para tener en cuenta que una notificación es
        relevante (defecto: ``30.0``),

    Minimum percentage of activity increment for activity to be taken into account for relevance
        Porcentaje mínimo de incremento de actividad/peso para considerar que la notificación
        es relevante (defecto ``30.0``).

    Number of days used to create default segments
        Periodo de días usados para la creación de los segmentos por defecto (defecto: ``14``).
