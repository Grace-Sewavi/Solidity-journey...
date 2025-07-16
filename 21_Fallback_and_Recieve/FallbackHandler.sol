// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract FallbackHandler {
    string public message;

    // A real function the robot understands
    function sayHello() public {
        message = "Hello, human!";
    }

    // Fallback for unknown functions or weird messages
    fallback() external payable {
        message = "Error 404: Command not found";
    }

    // View the current message
    function getMessage() public view returns (string memory) {
        return message;
    }
}
