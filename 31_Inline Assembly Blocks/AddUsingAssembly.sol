// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract AddUsingAssembly {
    function add(uint256 a, uint256 b) public pure returns (uint256 result) {
        assembly {
            result := add(a, b)
        }
    }
}
