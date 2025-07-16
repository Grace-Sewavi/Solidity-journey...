// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract PiggyBank {
    uint256 public totalSaved;

    // This runs when someone sends Ether with no message
    receive() external payable {
        totalSaved += msg.value;
    }

    // Check how much Ether is in the piggy bank
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
