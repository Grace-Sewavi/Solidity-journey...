// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// This is the robot plan (abstract contract)
abstract contract RobotPlan {
    // We are telling future robots they must do these 3 things:
    
    function sayHi() public virtual;
    function moveForward() public virtual;
    function dance() public virtual;
}
