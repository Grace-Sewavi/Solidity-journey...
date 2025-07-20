// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DexA {
    uint public price = 1 ether;

    function buy() public payable returns (uint) {
        require(msg.value == price, "Pay exact price");
        return 1; // 1 token
    }
}

contract DexB {
    uint public price = 2 ether;

    function sell(uint tokenAmount) public returns (uint) {
        require(tokenAmount == 1, "Only 1 token allowed");
        payable(msg.sender).transfer(price);
        return price;
    }

    receive() external payable {}
}

contract SimpleArbitrageBot {
    DexA public dexA;
    DexB public dexB;

    constructor(address _dexA, address _dexB) {
        dexA = DexA(_dexA);
        dexB = DexB(_dexB);
    }

    function performArbitrage() public payable {
        require(msg.value == 1 ether, "Need 1 ETH");

        dexA.buy{value: 1 ether}();
        dexB.sell(1);
    }

    receive() external payable {}
}
