// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// We tell the robot where to find the math tools
import "./MathLibrary.sol";

contract RobotCalculator {
    // Attach the library so the robot can use its tools
    using MathLibrary for uint;

    // Double a number
    function doDouble(uint x) public pure returns (uint) {
        return x.double();
    }

    // Square a number
    function doSquare(uint x) public pure returns (uint) {
        return x.square();
    }

    // Add two numbers
    function doAdd(uint a, uint b) public pure returns (uint) {
        return MathLibrary.add(a, b);
    }
}
