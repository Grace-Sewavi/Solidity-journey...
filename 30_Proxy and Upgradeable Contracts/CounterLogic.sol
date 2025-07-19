// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CounterLogic {
    uint256 public count;

    function increment() public {
        count++;
    }
}
