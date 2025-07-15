// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyViewFunction {
    // 🧮 This number is hidden in the robot's storage
    uint public luckyNumber = 7;

    // 👀 A function that ONLY looks at the number — doesn't change it!
    function seeNumber() public view returns (uint) {
        return luckyNumber;
    }
}
