// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GreeterBase {
    function getGreeting() public pure virtual returns (string memory) {
        return "Hello from the base contract.";
    }
}
