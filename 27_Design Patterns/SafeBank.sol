// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SafeBank {
    mapping(address => uint256) public balances;

    function deposit() external payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 _amount) external {
        // ✅ 1. Check
        require(balances[msg.sender] >= _amount, "Not enough candy!");

        // ✅ 2. Effects
        balances[msg.sender] -= _amount;

        // ✅ 3. Interaction
        (bool sent, ) = msg.sender.call{value: _amount}("");
        require(sent, "Candy not delivered!");
    }
}
