//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract DogeCoin {
    string public nombre;
    string public simbolo;
    uint8 public constant decimales = 6;
    mapping(address => uint256) public balances;

    constructor() {
        nombre = "DogeCoin";
        simbolo = "DOGE";
        balances[0x5B38Da6a701c568545dCfcB03FcB875f56beddC4] = 9999999999999;
        // escoger a qué address se le dará el balance inicial
    }

    function transferir(uint256 cantidad, address receptor) public {
        require(balances[msg.sender] >= cantidad, "Saldo insuficiente");
        balances[msg.sender] -= cantidad;
        balances[receptor] += cantidad;
    }
}
