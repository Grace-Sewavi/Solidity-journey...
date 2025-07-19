// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract LogicLibrary {
    uint public num;

    function setNum(uint _num) public {
        num = _num;
    }
}
