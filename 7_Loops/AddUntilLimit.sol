// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AddUntilLimit {
    uint public total;

    function addUpTo(uint limit) public {
        uint i = 0;
        while (i < limit) {
            total += i;
            i++;
        }
    }
}
