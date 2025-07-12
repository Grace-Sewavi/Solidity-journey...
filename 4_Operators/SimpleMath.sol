// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleMath {
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    function subtract(uint a, uint b) public pure returns (uint) {
        return a - b;
    }

    function divide(uint a, uint b) public pure returns (uint) {
        return a / b;
    }
}
