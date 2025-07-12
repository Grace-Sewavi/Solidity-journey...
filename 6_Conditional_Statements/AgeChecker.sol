// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AgeChecker {
    function checkAge(uint age) public pure returns (string memory) {
        if (age >= 18) {
            return "You're an adult!";
        } else if (age >= 13) {
            return "You're a teenager!";
        } else {
            return "You're a kid!";
        }
    }
}
