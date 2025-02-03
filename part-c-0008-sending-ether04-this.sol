/*

this Message Calls
In Solidity the this keyword give us access to the contract itself. We can call functions on it using the . operator:

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/console.sol";

contract Mustafa {

    // this usages

    function getNameAndYear() public view {

        console.log(this.returnMyName());
        console.log(this.returnCurrentYear());
    }

    function returnMyName() public pure returns (string memory) {

        return "Mustafa Buyukdereli";
    }

    function returnCurrentYear() public pure returns (uint16) {

        return 2025;
    }

}
