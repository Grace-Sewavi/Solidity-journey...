// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract MessageReceiver {
    string public lastMessage;

    function receiveMessage(string memory _message) public {
        lastMessage = _message;
    }
}
