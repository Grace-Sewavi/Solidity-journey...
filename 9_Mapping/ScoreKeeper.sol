// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ScoreKeeper {
    mapping(address => uint) public scores;

    function increaseScore() public {
        scores[msg.sender] += 1;
    }

    function getMyScore() public view returns (uint) {
        return scores[msg.sender];
    }
}
