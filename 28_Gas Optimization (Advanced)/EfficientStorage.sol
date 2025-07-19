// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EfficientStorage {
    // 👎 Expensive: each variable takes a full storage slot (256 bits)
    // uint256 a;
    // uint256 b;
    
    // 👍 Gas-efficient: pack into one slot (smaller types together)
    uint128 a;
    uint128 b;

    function set(uint128 _a, uint128 _b) external {
        a = _a;
        b = _b;
    }

    function get() external view returns (uint128, uint128) {
        return (a, b);
    }
}
