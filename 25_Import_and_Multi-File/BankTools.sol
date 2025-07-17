// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract BankTools {
    function getBalance(address user, mapping(address => uint) storage balances) 
        internal 
        view 
        returns (uint) 
    {
        return balances[user];
    }
}
