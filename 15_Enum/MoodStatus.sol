// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MoodStatus {
    // Step 1: Define mood options
    enum Mood { Happy, Sad, Sleepy }

    // Step 2: Store the current mood
    Mood public currentMood;

    // Step 3: Let user set their mood
    function setMood(uint _mood) public {
        require(_mood <= 2, "Invalid mood number");
        currentMood = Mood(_mood);
    }

    // Step 4: Let user check their mood
    function getMood() public view returns (Mood) {
        return currentMood;
    }
}
