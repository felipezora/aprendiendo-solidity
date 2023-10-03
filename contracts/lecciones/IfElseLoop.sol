//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract IfElseLoop {
    mapping(uint8 => bool) public boolValue; // valor por defecto de todos los uint256 es false

    // consultar para que los pelaos vean

    function setToTrue() public {
        for (uint8 index; index < type(uint8).max; index++) {
            boolValue[index] = true;
        }
    }

    function setToFalse() public {
        uint8 index;
        while (index < type(uint8).max) {
            boolValue[index] = true;
            index++;
        }
    }

    // también existe el do-while

    function setToTrueUntil(uint8 limit) public {
        uint8 index;
        for (index; index < type(uint8).max; index++) {
            boolValue[index] = true;
            if (index == limit) {
                break;
            }
        }
    }
}
