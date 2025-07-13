// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractInitializer {
    address public owner;
    uint public startingPoints;

    constructor(uint _points) {
        owner = msg.sender;
        startingPoints = _points;
    }
}
