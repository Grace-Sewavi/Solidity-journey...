// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PayableContract {
    // 🏦 This is our robot piggy bank's balance
    uint public totalReceived;

    // 💰 A special function that lets people send money to the contract
    receive() external payable {
        // 🧮 Add the money sent to the total
        totalReceived += msg.value;
    }

    // 👀 Let's peek at how much money the piggy bank has received
    function checkBalance() public view returns (uint) {
        return totalReceived;
    }
}
