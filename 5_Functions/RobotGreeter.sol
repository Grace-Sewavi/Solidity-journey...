// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RobotGreeter {
    function sayHello() public pure returns (string memory) {
        return "Hello!";
    }

    function greetMe(string memory _name) public pure returns (string memory) {
        return string(abi.encodePacked("Hi ", _name, "! Nice to meet you."));
    }
}
