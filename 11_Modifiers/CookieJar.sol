// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CookieJar {
    address public owner;
    string public cookie = "Chocolate Chip";

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "No cookies for you!");
        _;
    }

    function eatCookie() public view onlyOwner returns (string memory) {
        return cookie;
    }
}
