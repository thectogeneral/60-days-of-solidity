// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VisibilityExample {
    uint public data = 100;

    // public function
    function publicFunc() public view returns (uint) {
        return data;
    }

    // private function
    function privateFunc() private pure returns (string memory) {
        return "Private Function!";
    }

    // internal function
    function internalFunc() internal view returns (uint) {
        return data;
    }

    // external function
    function externalFunc() external pure returns (string memory) {
        return "External Function!";
    }
}