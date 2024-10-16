// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBank {
    mapping(address => uint) public balances;
    
    // Deposit Ether
    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }
    
    // Withdraw Ether
    function withdraw(uint _amount) public {
        require(balances[msg.sender] >= _amount, "Insufficient balance");
        payable(msg.sender).transfer(_amount);
        balances[msg.sender] -= _amount;
    }

    // Check balance
    function getBalance() public view returns (uint) {
        return balances[msg.sender];
    }
}