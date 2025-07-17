// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "./ToyHelper.sol";

contract ToyBox is ToyHelper {
    string[] private toys;

    function addToy(string memory toyName) public {
        toys.push(toyName);
    }

    function totalToys() public view returns (uint) {
        return countToys(toys); // Function from ToyHelper!
    }
}
