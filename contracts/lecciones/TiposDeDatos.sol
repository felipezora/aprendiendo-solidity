//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract TiposDeDatos {
    // Todos los tipos de datos tienen un valor por defecto
    // Si no se le asigna un valor a la variable al instanciarla, toma el valor por defecto

    bool myBool = true || false;
    uint8 myUint8; // de 8 a 256 usando múltiplos de 8
    uint256 myUint256; // de 8 a 256 usando múltiplos de 8
    int8 myInt8 = type(int8).max; // de 8 a 256 usando múltiplos de 8
    int256 myInt256 = type(int256).min; // de 8 a 256 usando múltiplos de 8

    address juanitoAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; // 20 bytes (40 caracteres)

    bytes32 b32 = "Terry A. Davis"; // cada caracter (UTF-8) equivale a un byte
    // https://www.geeksforgeeks.org/bytes-in-solidity/

    string myString = "Hello World!"; // array de bytes dinámico, cada caracter (UTF-8) equivale a un byte

    uint[3] public numsFixed; // array de uint tamaño fijo
    uint[] public nums; // array de uint tamaño variable

    mapping(address => uint256) balances; // define una tabla de pares "llave, valor"
    // en este ejemplo la llave serán los address y los valores serán uint256
    // balances[0x5B38Da6a701c568545dCfcB03FcB875f56beddC4] = 123;

    mapping(address => mapping(uint => bool)) anidado;

    enum Direccion {
        Norte,
        Sur,
        Este,
        Oeste
    } // cada opción es mapeada a un uint256 empezando desde el cero
    Direccion miDireccion = Direccion.Norte;

    struct Tarea {
        // permite crear datos complejos que pueden ser vistos como instancias de objetos
        string text;
        bool completed;
    }
    Tarea tarea = Tarea("Dormir", false);

    // combinaciones interesante
    mapping(address => Tarea) tareasMapping; // mapping de address a Tarea

    Tarea[] tareasArray; // Array de Tarea

    // variables globales: msg, tx, block
}
