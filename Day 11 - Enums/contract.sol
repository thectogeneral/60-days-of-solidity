// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractState {
    enum State { Inactive, Active, Suspended }

    State public state;

    // Set the contract state
    function setState(State _state) public {
        state = _state;
    }

    // Get the current state of the contract
    function getState() public view returns (State) {
        return state;
    }
}