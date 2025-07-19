// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DelegateCaller {
    uint public num;

    function useLibrary(address _lib, uint _num) public {
        (bool success, ) = _lib.delegatecall(
            abi.encodeWithSignature("setNum(uint256)", _num)
        );
        require(success, "Call failed");
    }
}
