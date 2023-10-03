//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract Exceptions {
    uint8 public number = 3;
    uint8 public numberAlwaysZero = 0;

    // Las transacciones en Ethereum son "atómicas", es decir, o se completan o no se completan
    // Si ocurre una excepción, el estado se revierte al como estaba antes de iniciar la transacción
    // (excepto en low level calls)

    // hay tres tipos de excepciones en Ethereum: Error(string), Panic(uint256) y Custom Errors.
    // 1. Error(string): usado para validaciones normales, retorna un string que defina el programador.

    // 2. Panic(uint256): errores que no se deberían presentar nunca (en un código sin bugs).
    // Por ejemplo ocurre cuando divido un número por cero. Se usa para evaluar invarianza
    // (estados a los que nunca se debe llegar)

    // 3. Custom errors: son del mismo tipo del Error del numeral 1, pero se puede modificar para
    // darle un nombre específico y retornar cualquier tipo de dato que yo desee

    // Funciones para lanzar validación y lanzar error:

    // 1. Require: valida que se cumpla una condición. Si no se cumple, lanza un Error(string).
    // Mientras más largo el string, más gas usa. Si ocurre, devuelve todo el gas restante.

    function validateNumberRequire(uint8 input) public view {
        require(input == number, "Different number");
        // do something
    }

    // 2. Revert: se invoca para hacer que el programa lance un custom error luego de haber validado
    // una condición. Usualmente ahorra más gas que un require si no retornamos strings. Si ocurre, devuelve todo el gas restante.

    // creando custom error
    error InvalidNumber(uint8 input, uint8 correctNumber); // creo mi custom error

    function validateNumberRevert(uint8 input) public view {
        if (input != number) {
            revert InvalidNumber(input, number); // lanzo mi custom
            //revert("Invalid number");
        }
        // do something
    }

    // 3. Assert: usualmente usado para chequear invarianza (estados a los que no se debería llegar).
    // Lanza un Panic. Si ocurre, no se retorna el gas enviado junto con la transacción
    function validateZeroAssert() public view {
        assert(numberAlwaysZero == 1);
        // do something
    }

    // función para que la EVM nos lance excepción de Panic
    function triggerPanic() public pure returns (uint8) {
        uint8 a = 5;
        uint8 b = 0;
        return a / b;
    }
}
