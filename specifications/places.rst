=======
Lugares
=======

Los lugares, o **places**, son zonas geográficas que representan fronteras administrativas de
partes del mundo. Se pueden corresponder con barrios, ciudades, estados, países, etc.

El objetivo de esto es tener una base de datos propia de lugares administrativos, de forma que no
se dependa de servicios de terceros, como Nominatim o Google Maps.

De todas formas, utilizando el API de búsqueda de Nominatim, con el parámetro de ``polygon_geojson=1`` se
pueden obtener resultados de lugares que incluyen la geometría, de forma que se puede integrar
en la base de datos de forma directa.

A la hora de enviar una notificación a un área administrativa, el proceso consistirá en
utilizar el API de *places* para obtener las fronteras de ese área y pasarlas directamente a la
notificación. De esta forma, la lógica de la notificación no se ve alterada, y es equivalente mandar a
una ciudad a un polígono arbitrario.
