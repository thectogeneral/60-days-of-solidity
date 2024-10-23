// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserDirectory {
    struct User {
        string name;
        uint balance;
        address userAddress;
    }

    mapping(address => User) public users;
    address[] public userList;

    // Add a new user
    function addUser(string memory _name, uint _balance) public {
        users[msg.sender] = User(_name, _balance, msg.sender);
        userList.push(msg.sender);
    }

    // Update user balance
    function updateUserBalance(uint _balance) public {
        require(bytes(users[msg.sender].name).length > 0, "User does not exist");
        users[msg.sender].balance = _balance;
    }

    // Get total number of users
    function getTotalUsers() public view returns (uint) {
        return userList.length;
    }
}