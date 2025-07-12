// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MoodChanger {
    string public mood = "Happy";

    function changeMood(string memory _newMood) public {
        mood = _newMood;
    }
}
