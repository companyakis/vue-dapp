/*
storage- memory- calldata

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/console.sol";

contract Mustafa {

    string public firstName = "Mustafa "; // storage

    function tellMeAProverb() public pure returns (string memory) {

        string memory myProverb = "A rollling stone gathers no moss!"; // memory

        myProverb = "Kurt kisi gecirir, yedigi ayazi unutmaz!";

        return myProverb; // return => Kurt kisi gecirir, yedigi ayazi unutmaz!
    } 

    function returnImmutableName(string calldata name) public pure returns (string calldata) {

        return name;
    }
}

/*

Why use calldata?

The benefits of using calldata include:
Gas Efficiency: Calldata is cheaper in terms of gas cost as it is read-only and does not make permanent changes to the blockchain.
Security: Calldata is immutable during a function call which ensures that function arguments can't be accidentally modified.



*/
