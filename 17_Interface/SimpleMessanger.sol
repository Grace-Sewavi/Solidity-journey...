// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Step 1: The interface - just rules!
interface Messenger {
    function sendMessage(string memory _message) external;
}

// Step 2: RealMessenger follows the rules
contract RealMessenger is Messenger {
    string public lastMessage;

    function sendMessage(string memory _message) external override {
        lastMessage = _message;
    }
}

// Step 3: Another contract using the interface
contract MessageUser {
    function callMessenger(address _messenger, string memory _msg) public {
        Messenger(_messenger).sendMessage(_msg);
    }
}
