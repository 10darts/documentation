====
Keys
====

El sistema permite almacenar **información arbitraria** en formato de clave/valor asociada
tanto a dispositivos como a usuarios.

Añadir clave/valor a un dispositivo
-----------------------------------

.. http:post:: /api/v1/keys/devices/

    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/keys/devices/ HTTP/1.1
        Content-Type: application/json

        {
            "key": {
                "label": "foo"
            },
            "type": 2,
            "value": "var"
            "device": "/api/v1/devices/9XzsNm/"
        }


    :<json object key: objeto JSON con la clave ``name`` indicando el nombre de la clave que se quiere asociar, **obligatorio**
    :<json int type: en caso de indicar un valor asociado, el tipo de este valor, siendo 0: float, 1: int, 2: string, 3: bool
    :<json string value: representación en cadena de texto del valor que se quiere asociar a la key
    :<json string device: referencia al dispositivo al que se quiere asociar el valor

Añadir clave/valor a un usuario
-------------------------------

.. http:post:: /api/v1/keys/personas/

    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/keys/personas/ HTTP/1.1
        Content-Type: application/json

        {
            "key": {
                "label": "foo"
            },
            "type": 2,
            "value": "var"
            "persona": "/api/v1/personas/9XzsNm/"
        }


    :<json object key: objeto JSON con la clave ``name`` indicando el nombre de la clave que se quiere asociar, **obligatorio**
    :<json int type: en caso de indicar un valor asociado, el tipo de este valor, siendo 0: float, 1: int, 2: string, 3: bool
    :<json string value: representación en cadena de texto del valor que se quiere asociar a la key
    :<json string users: referencia al usuario al que se quiere asociar el valor

En ambas llamadas, se puede omitir los campos relacionados con el valor (``type`` y ``value``) para
almacenar claves como si fueran etiquetas al uso.
