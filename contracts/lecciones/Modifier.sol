//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract Modifier {
    address private owner = msg.sender;
    uint8 public counter;

    modifier onlyOwner(address _sender) {
        require(owner == _sender, "Not owner!");
        _; // sintaxis especial solo para modifiers
        // indica que se ejecute el resto de la función
    }

    modifier addCounter() {
        counter = counter + 1;
        _;
    }

    function changeOwner(
        address _newOwner
    ) public onlyOwner(msg.sender) addCounter {
        // se pueden añadir tantos modifiers como se quiera a la función
        // se ejecutan en el orden en que se llaman en la función
        owner = _newOwner;
    }

    function getOwner() public view returns (address) {
        return owner;
    }
}
