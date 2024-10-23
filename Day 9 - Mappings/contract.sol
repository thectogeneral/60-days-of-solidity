// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserBalances {
    mapping(address => uint) public balances;

    // Update the balance of an address
    function updateBalance(address _address, uint _amount) public {
        balances[_address] = _amount;
    }

    // Retrieve the balance of an address
    function getBalance(address _address) public view returns (uint) {
        return balances[_address];
    }

    // Delete the balance for an address
    function deleteBalance(address _address) public {
        delete balances[_address];
    }
}