// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract TimeLocker {
    address public owner;
    uint256 public unlockTime;
    string private secretMessage;

    constructor(uint256 _waitTimeInSeconds, string memory _message) {
        owner = msg.sender;
        unlockTime = block.timestamp + _waitTimeInSeconds;
        secretMessage = _message;
    }

    function getSecret() public view returns (string memory) {
        require(block.timestamp >= unlockTime, "Wait! It's not time yet.");
        return secretMessage;
    }

    function timeLeft() public view returns (uint256) {
        if (block.timestamp >= unlockTime) {
            return 0;
        } else {
            return unlockTime - block.timestamp;
        }
    }
}
