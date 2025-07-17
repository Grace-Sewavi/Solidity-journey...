// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

interface IBank {
    function deposit() external payable;
    function withdraw(uint256 amount) external;
    function getBalance(address user) external view returns (uint256);
}

contract BankCaller {
    function sendDeposit(address bank) public payable {
        IBank(bank).deposit{value: msg.value}();
    }

    function makeWithdrawal(address bank, uint256 amount) public {
        IBank(bank).withdraw(amount);
    }

    function checkUserBalance(address bank, address user) public view returns (uint256) {
        return IBank(bank).getBalance(user);
    }
}
