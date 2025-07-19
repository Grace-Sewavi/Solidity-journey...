// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StoreAndLoad {
    uint256 public storedData;

    function store(uint256 _val) public {
        assembly {
            sstore(0, _val)
        }
    }

    function load() public view returns (uint256 result) {
        assembly {
            result := sload(0)
        }
    }
}
