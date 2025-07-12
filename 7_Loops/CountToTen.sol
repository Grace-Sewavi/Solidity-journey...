// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CountToTen {
    uint[] public numbers;

    function count() public {
        for (uint i = 1; i <= 10; i++) {
            numbers.push(i);
        }
    }
}
