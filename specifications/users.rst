.. _users:

========
Usuarios
========

Llamaremos **usuario** a aquella entidad con la *capacidad potencial* de identificarse en el sistema,
mediante el uso de un correo electrónico y una contraseña. Diferenciaremos dos grandes grupos de
usuarios, los **clientes** y los **usuarios**.

- Los **clientes**
- Los **usuarios**

.. _users-clients:

Clientes
--------

Los **clientes** son aquellos capaces de identificarse en el sistema. Por lo general
estarán relacionados con empresas que actúen de clientes de la plataforma (por ejemplo, Onpublico).

Además de ser los que se identifiquen en el sistema, estos usuarios son los poseen el contenido. Tanto
las notificaciones, los dispositivos, los pushes y los usuarios tienen asociados un
dueño, que siempre se corresponderá con un cliente.

Las **llamadas del API** vendrán siempre identificadas por uno de estos usuarios.

Aplicación SNS
++++++++++++++

Los *clientes* tienen que registrar en la plataforma los credenciales de su aplicación móvil
para que se registre una **aplicación de SNS** para cada plataforma que quiera soportar
el usuario.

.. _users-simple:

Usuarios
--------

Los usuarios son **aquellos a los que se les asocia a un dispositivo**. Un dispositivo solo
puede tener un usuario asociado al mismo tiempo.

Los usuarios se *identifican por un correo electrónico*, y son creados bajo demanda por
clientes.

Si un mismo usuario (mismo correo electrónico) es creado por varios clientes, solo se
crea una vez, y todos los clientes que lo registran comparten la posesión de este
usuario.

Un usuario no puede identificarse directamente en el sistema, y toda acción que tenga que
ver con este sera registrada usando el dispositivo que este utilizando, no el usuario.
