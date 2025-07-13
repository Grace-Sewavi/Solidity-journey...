// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SecretDoor {
    bool public doorOpen = false;

    function openDoor(bool hasKey) public {
        if (!hasKey) {
            revert("You don't have the key!");
        }

        doorOpen = true;
    }
}
