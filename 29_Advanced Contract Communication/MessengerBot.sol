// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IMessage {
    function setMessage(string memory _msg) external;
}

contract MessengerBot {
    function sendMessage(address _target, string memory _msg) public {
        IMessage(_target).setMessage(_msg);
    }
}
