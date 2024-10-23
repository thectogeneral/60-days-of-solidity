// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AddressArray {
    address[] public addresses; // dynamic array of addresses

    // Add an address to the array
    function addAddress(address _address) public {
        addresses.push(_address);
    }

    // Remove the last address from the array
    function removeAddress() public {
        addresses.pop();
    }

    // Get the total number of addresses
    function getAddressCount() public view returns (uint) {
        return addresses.length;
    }

    // Get a specific address from the array
    function getAddress(uint index) public view returns (address) {
        require(index < addresses.length, "Index out of bounds");
        return addresses[index];
    }
}