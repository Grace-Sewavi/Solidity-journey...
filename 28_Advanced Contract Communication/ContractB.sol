// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ContractB {
    string public message;

    function setMessage(string memory _msg) external {
        message = _msg;
    }
}
