// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ToyDecision {
    function getToy(bool wasGood) public pure returns (string memory) {
        if (wasGood) {
            return "Yes! You get a toy!";
        } else {
            return "No toy for now.";
        }
    }
}
