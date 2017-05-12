.. _users:

========
Usuarios
========

Llamaremos **usuario** a aquella entidad en el sistema que representa a un
individuo, o conjunto de individuos, en la realidad. Diferenciaremos dos
grandes grupos de usuarios:

- Los **clientes**
- Las **personas**

.. _users-clients:

Clientes
--------

Los **clientes** son aquellos capaces de identificarse en el sistema. Por lo general
estarán relacionados con empresas que actúen de clientes de la plataforma (por ejemplo, Onpublico).

Además de ser los que se identifiquen en el sistema, estos usuarios son los *poseen el contenido*. Tanto
las notificaciones, los dispositivos, los pushes y las personas tienen asociados un
dueño, que siempre se corresponderá con un cliente.

Las **llamadas del API** vendrán siempre identificadas por uno de estos usuarios.

Aplicación SNS
++++++++++++++

Los *clientes* tienen que registrar en la plataforma los credenciales de su aplicación móvil
para que se registre una **aplicación de SNS** para cada plataforma que quiera soportar
el usuario.

.. _users-simple:

Personas
--------

Las *`personas <https://en.wikipedia.org/wiki/Persona_(psychology)>`_*  son
**aquellos a los que se les asocia a un dispositivo**. Un dispositivo solo
puede tener una persona asociado al mismo tiempo.

Los usuarios se *identifican por un código único*, y son creados al dar de alta
un device en el sistema. También se pueden crear bajo demanda por el **cliente**.

Las personas no pueden identificarse directamente en el sistema, y siempre
pertenecen a un único **cliente**.
