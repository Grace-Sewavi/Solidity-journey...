// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GiftSender {
    event GiftSent(address sender, string message);

    function sendGift(string memory _message) public {
        emit GiftSent(msg.sender, _message);
    }
}
