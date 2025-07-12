// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StarGiver {
    mapping(string => uint) public stars;

    function giveStars(string memory _name, uint _amount) public {
        stars[_name] = _amount;
    }

    function getStars(string memory _name) public view returns (uint) {
        return stars[_name];
    }
}
