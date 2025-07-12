// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FruitBasket {
    string[] public fruits;

    function addFruit(string memory _fruit) public {
        fruits.push(_fruit);
    }

    function countFruits() public view returns (uint) {
        return fruits.length;
    }

    function getFruit(uint index) public view returns (string memory) {
        return fruits[index];
    }
}
