// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract ToyHelper {
    function countToys(string[] memory toys) public pure returns (uint) {
        return toys.length;
    }
}
