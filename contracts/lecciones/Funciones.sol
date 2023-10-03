// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract Storage {
    uint256 number;

    // sintaxis de una función:
    /*
    function name(<parameter types>) {internal|external|public|private} [pure|view|payable] [modifiers] [returns (<return types>)]
    */

    function store(uint256 num) public {
        number = num;
    }

    // view: función que no modifica el estado
    function getNumber() public view returns (uint256) {
        return number;
    }

    // pure: función que no lee o modifica el estado
    function mathTwoNumbers(
        uint256 a,
        uint256 b
    ) public pure returns (uint256, uint256) {
        return (a + b, a * b);
    }

    // payable: función que puede recibir ether
    function logSender() public payable returns (uint256) {
        if (msg.value > 0) {
            return msg.value;
        }
        return 0;
    }

    // hacer ejemplo de visibilidad de variables con la variable de estado number
    // comentar función getNumber y hacer la variable public, luego private
}
