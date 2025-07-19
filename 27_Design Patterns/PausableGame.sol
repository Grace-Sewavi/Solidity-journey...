// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract PausableGame {
    address public owner;
    bool public paused;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "You're not the candy boss!");
        _;
    }

    modifier whenNotPaused() {
        require(!paused, "Game is paused! 🍬⛔");
        _;
    }

    function pauseGame() external onlyOwner {
        paused = true;
    }

    function resumeGame() external onlyOwner {
        paused = false;
    }

    function playGame() external whenNotPaused {
        // 🎮 Play logic
    }
}
