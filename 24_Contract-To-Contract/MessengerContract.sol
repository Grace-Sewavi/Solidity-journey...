// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

interface IMessageReceiver {
    function receiveMessage(string memory _message) external;
}

contract MessengerContract {
    function sendToOtherContract(address _receiver, string memory _text) public {
        IMessageReceiver(_receiver).receiveMessage(_text);
    }
}
