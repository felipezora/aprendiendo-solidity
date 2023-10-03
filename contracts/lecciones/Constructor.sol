//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

// es lo mismo declarar las variables y asignarlas directamente que usar un constructor
contract Constructor {
    address public owner = msg.sender;
    uint8 number = 3;
}

contract Constructor2 {
    address public owner;
    uint8 number;

    constructor() {
        // función especial que solo se ejecuta una vez, cuando se depliega el contrato
        owner = msg.sender;
        number = 3;
    }
}
