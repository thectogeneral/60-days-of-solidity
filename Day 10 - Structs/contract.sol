// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserProfile {
    struct User {
        string name;
        uint age;
        address userAddress;
    }

    mapping(address => User) public users;

    // Create or update a user's profile
    function setUserProfile(string memory _name, uint _age) public {
        users[msg.sender] = User(_name, _age, msg.sender);
    }

    // Retrieve a user's profile
    function getUserProfile(address _address) public view returns (string memory, uint, address) {
        User memory user = users[_address];
        return (user.name, user.age, user.userAddress);
    }
}