// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NumberBox {
    uint[] public numbers;

    function addNumber(uint _num) public {
        numbers.push(_num);
    }

    function sumNumbers() public view returns (uint) {
        uint total = 0;
        for (uint i = 0; i < numbers.length; i++) {
            total += numbers[i];
        }
        return total;
    }
}
