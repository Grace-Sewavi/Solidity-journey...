// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MiniBankWithEvents {
    mapping(address => uint) public balances;

    event DepositMade(address indexed account, uint amount);
    event Withdrawn(address indexed account, uint amount);

    function deposit() public payable {
        balances[msg.sender] += msg.value;
        emit DepositMade(msg.sender, msg.value);
    }

    function withdraw(uint _amount) public {
        require(balances[msg.sender] >= _amount, "Not enough funds!");
        balances[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
        emit Withdrawn(msg.sender, _amount);
    }
}
