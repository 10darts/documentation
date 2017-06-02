=============
Autenticación
=============

Autenticación vía Token
-----------------------

Cada **cliente** dispondrá de un credencial en forma de cadena de texto aleatoria generada por el
sistema. Esta cadena, o ``token`` será utilizado para la autenticación de las llamadas al API.

El token debe ser incluido en la cabecera HTTP de **Authorization**. La clave tiene que estar precedida
por el literal ``Token``, con una separación de un espacio entre las dos cadenas. Por ejemplo::

    Authorization: Token 9944b09199c62bcf9418ad846dd0e4bbdfc6ee4b


Las llamadas no autenticadas tendrán como resultado una respuesta del tipo ``HTTP 401 Unauthorized``.
