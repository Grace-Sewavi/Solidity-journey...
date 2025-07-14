// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// This is the INTERFACE
interface Robot {
    function sayHello() external view returns (string memory);
    function walkForward() external pure returns (string memory);
}

// This is the contract that follows the interface rules
contract MyRobot is Robot {
    function sayHello() public view override returns (string memory) {
        return "Hello, human!";
    }

    function walkForward() public pure override returns (string memory) {
        return "Walking forward!";
    }
}
