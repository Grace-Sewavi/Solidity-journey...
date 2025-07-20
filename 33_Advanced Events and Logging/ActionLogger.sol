// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ActionLogger {
    event ActionHappened(address indexed user, string message, uint timestamp);

    function doSomethingCool(string memory _msg) public {
        emit ActionHappened(msg.sender, _msg, block.timestamp);
    }
}
