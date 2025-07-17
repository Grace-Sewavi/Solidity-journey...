// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "./BankTools.sol";

contract MiniBank is BankTools {
    mapping(address => uint) private balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function myBalance() public view returns (uint) {
        return getBalance(msg.sender, balances);
    }
}
