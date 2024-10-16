// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    // Allow the contract to receive Ether
    receive() external payable {}

    // Withdraw Ether
    function withdraw(uint _amount) external {
        require(msg.sender == owner, "Only owner can withdraw");
        payable(msg.sender).transfer(_amount);
    }

    // Get contract balance
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}