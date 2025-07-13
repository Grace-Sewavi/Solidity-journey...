// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ScoreAnnouncer {
    mapping(address => uint) public scores;

    event ScoreUpdated(address player, uint newScore);

    function increaseScore() public {
        scores[msg.sender]++;
        emit ScoreUpdated(msg.sender, scores[msg.sender]);
    }
}
