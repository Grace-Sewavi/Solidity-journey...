// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./RobotPlan.sol"; // We are using the robot plan!

contract SmartRobot is RobotPlan {
    // Now we write HOW the robot does all the things from the plan

    function sayHi() public pure override {
        // Robot says hi!
        // This is how we make the robot say hi
    }

    function moveForward() public pure override {
        // Robot moves forward!
        // We are showing HOW it moves
    }

    function dance() public pure override {
        // Robot dances!
        // Yay! Our robot can groove!
    }
}
