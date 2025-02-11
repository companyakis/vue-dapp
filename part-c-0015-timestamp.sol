/*
block's global variable block.timestamp, representing the seconds elapsed since 00:00:00 UTC, 1 January 1970, of the currently mined block

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FinTech {

    function getCurrentTime() public view returns (uint) {

        return block.timestamp;
    }
}

