// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LittleCalculator {
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    function multiply(uint a, uint b) public pure returns (uint) {
        return a * b;
    }
}
