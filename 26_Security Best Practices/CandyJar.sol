// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CandyJar {
    mapping(address => uint256) public candyBalance;

    bool private locked;

    constructor() {
        candyBalance[msg.sender] = 10;
    }

    modifier noReentrancy() {
        require(!locked, "No sneaky calls allowed!");
        locked = true;
        _;
        locked = false;
    }

    function takeCandy() public noReentrancy {
        require(candyBalance[msg.sender] > 0, "No candy left!");
        candyBalance[msg.sender] -= 1;

        // Send back some ETH like giving a gift with candy
        (bool sent, ) = msg.sender.call{value: 0.01 ether}("");
        require(sent, "Candy transfer failed!");
    }

    receive() external payable {}
}
