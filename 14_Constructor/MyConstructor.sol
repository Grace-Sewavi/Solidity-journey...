// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyConstructor {
    string public robotName;

    constructor(string memory _name) {
        robotName = _name;
    }
}
