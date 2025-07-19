// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CheapCounter {
    uint256 public count;
    address public immutable owner;
    uint256 public constant MAX = 1000;

    error NotOwner();
    error LimitReached();

    constructor() {
        owner = msg.sender;
    }

    function increment() external {
        if (msg.sender != owner) revert NotOwner();
        if (count >= MAX) revert LimitReached();
        count++;
    }
}
