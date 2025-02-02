/*
Your Goal: Sum Dynamic Array
Create a pure, external function sum which takes a dynamic size array of unsigned integers.
Find the sum of the unsigned integers and return it as a uint.

*/

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {

    function sum(uint[] memory arr) external pure returns (uint) {

        uint total = 0;

        for (uint i = 0; i < arr.length; i++) {

            total += arr[i];
        }

        return total;
    }
    
}
