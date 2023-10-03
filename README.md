# Storage

Locación de memoria que es persistente en el tiempo (data que se va a registrar en el estado de la blockchain). Ej: variables de estado que declaramos se almacenan en el Storage.

Funciona como un diccionario llave/valor donde tanto las llaves como los valores son de tamaño 32 bytes.

# Memory

Locación de memoria volátil, usada solo durante la ejecución de la función. Al finalizar la ejecución de la función, la memoria es vaciada.

# Calldata

Locación de memoria volátil donde son guardados los argumentos pasados a las funciones. No se usa para crear variables y es read-only.

# Stack

Locación de memoria exclusiva para la EVM, que usa para ejecutar los opcodes del bytecode.

---

En algunas ocasiones se hace necesario especificar la locación de memoria donde se almacenará determinada data. Por ejemplo, cuando tengo un parámetro de una función que es de tipo de dato string.
Leer más en: https://docs.soliditylang.org/en/latest/types.html#data-location
