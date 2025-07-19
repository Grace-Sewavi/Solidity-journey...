// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TrustyContract {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function giveAllCandy() public {
        require(tx.origin == owner, "Not candy boss!");
        // All candy logic here — but it's unsafe!
    }
}
