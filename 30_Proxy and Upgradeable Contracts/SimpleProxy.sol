// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleProxy {
    address public logic;
    address public admin;

    constructor(address _logic) {
        logic = _logic;
        admin = msg.sender;
    }

    function upgrade(address _newLogic) external {
        require(msg.sender == admin, "Not admin!");
        logic = _newLogic;
    }

    fallback() external payable {
        address impl = logic;
        assembly {
            calldatacopy(0, 0, calldatasize())
            let result := delegatecall(gas(), impl, 0, calldatasize(), 0, 0)
            returndatacopy(0, 0, returndatasize())
            switch result
            case 0 { revert(0, returndatasize()) }
            default { return(0, returndatasize()) }
        }
    }
}
