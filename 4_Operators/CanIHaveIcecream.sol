// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CanIHaveIceCream {
    function canGetIceCream(uint age) public pure returns (bool) {
        return age >= 5;
    }
}
