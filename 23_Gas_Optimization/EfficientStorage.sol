// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract EfficientStorage {
    // 🤓 We're packing multiple variables into a single storage slot to save gas!
    uint128 public smallNumber1 = 1;
    uint128 public smallNumber2 = 2;

    // Changing both numbers in one function
    function update(uint128 _num1, uint128 _num2) external {
        smallNumber1 = _num1;
        smallNumber2 = _num2;
    }
}
