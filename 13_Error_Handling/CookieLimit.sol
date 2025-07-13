// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CookieLimit {
    uint public maxCookies = 5;

    function takeCookies(uint amount) public view returns (string memory) {
        require(amount <= maxCookies, "Too many cookies!");
        return "Yum! Cookie taken!";
    }
}
