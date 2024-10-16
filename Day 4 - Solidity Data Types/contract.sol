// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataTypesDemo {
    uint public number;
    int public signedNumber;
    address public owner;
    string public greeting;
    bool public isReady;

    constructor() {
        number = 42;
        signedNumber = -42;
        owner = msg.sender;
        greeting = "Hello!";
        isReady = true;
    }

    function getData() public view returns (uint, int, address, string memory, bool) {
        return (number, signedNumber, owner, greeting, isReady);
    }
}