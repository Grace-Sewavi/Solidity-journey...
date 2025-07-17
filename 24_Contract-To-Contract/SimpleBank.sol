// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract SimpleBank {
    mapping(address => uint256) public balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Not enough funds!");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    function getBalance(address user) public view returns (uint256) {
        return balances[user];
    }
}
