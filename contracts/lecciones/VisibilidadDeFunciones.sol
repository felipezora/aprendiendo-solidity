//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract MyContract {
    // visibilidad para funciones

    // no hay visibilidad por defecto ya que siempre toca especificarla en funciones

    // external: solo puede ser llamada desde otros contratos o via transacciones
    // hay un "hack" que permite llamar una función external desde el mismo contrato
    function doSomething() external pure returns (uint256) {
        return 123;
    }

    // public: cualquiera puede llamar esta función
    function doSomething2() public pure returns (uint256) {
        return 456;
        // do something
    }

    // internal: solo puede ser llamada internamente (desde el mismo contrato, contratos derivados)
    function doSomething3() internal {
        // do something
    }

    // private: solo puede ser llamada desde el mismo contrato que la declara
    function doSomething4() private {
        // do something
    }

    // ejemplo de que no puedo
    function useDoSomething() public returns (uint256) {
        //uint256 doSomething2Result = doSomething2();
        //return doSomething2Result;
        //return doSomething4();
        //return doSomething();
    }
}
