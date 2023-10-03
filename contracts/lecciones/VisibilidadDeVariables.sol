//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract MyContract {
    // visibilidad para variables de estado

    // public: puede ser accedida desde dentro y fuera del contrato
    // por ejemplo puede ser accedida por otro contrato que llama a este contrato
    // public automáticamente crea funciones getters y setters para la variable
    uint256 public numero = 123;

    // internal: solo puede ser accedida desde dentro del contrato o por contratos derivados (herencia)
    uint256 internal numero2;

    // private: solo puede ser accedida desde dentro del contrato que la declara
    uint256 private numero3;

    // si no se especifica visibilidad para una variable, POR DEFECTO SERÁ INTERNAL
}
