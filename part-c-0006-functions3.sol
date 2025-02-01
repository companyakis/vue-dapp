/*
Your Goal: Add Uint
Create an external view function add which takes a uint parameter and returns the sum of the parameter plus the state variable x.

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

    uint public x;

    function add(uint y) external view returns (uint) {

        return x + y;
    }

}
