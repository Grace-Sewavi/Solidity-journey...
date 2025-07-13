// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RobotLock {
    bool public isLocked = true;

    modifier whenUnlocked() {
        require(!isLocked, "Robot is locked!");
        _;
    }

    function unlock() public {
        isLocked = false;
    }

    function doSecretAction() public view whenUnlocked returns (string memory) {
        return "Secret action complete!";
    }
}
