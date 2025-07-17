// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract CheapCounter {
    uint256 public counter;

    // Using `unchecked` to save gas on overflow check
    function increase() public {
        unchecked {
            counter++;
        }
    }
}
