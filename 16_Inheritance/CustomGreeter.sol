// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./GreeterBase.sol";

contract CustomGreeter is GreeterBase {
    function getGreeting() public pure override returns (string memory) {
        return string(abi.encodePacked(super.getGreeting(), " And hello from the custom contract!"));
    }
}
