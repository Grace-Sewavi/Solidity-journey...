// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MockFlashLoanProvider {
    uint public loanAmount = 10 ether;

    function executeLoan(address borrower) public {
        uint balanceBefore = address(this).balance;
        require(address(this).balance >= loanAmount, "Not enough funds");

        (bool sent, ) = borrower.call{value: loanAmount}(abi.encodeWithSignature("receiveLoan()"));
        require(sent, "Loan failed");

        require(address(this).balance >= balanceBefore, "Loan not repaid!");
    }

    receive() external payable {}
}

contract FlashLoanTaker {
    address payable public loanProvider;

    constructor(address payable _provider) {
        loanProvider = _provider;
    }

    function startLoan() public {
        MockFlashLoanProvider(loanProvider).executeLoan(address(this));
    }

    function receiveLoan() external payable {
        // Do something profitable here (mocked)
        // Return loan
        payable(msg.sender).transfer(msg.value);
    }

    receive() external payable {}
}
