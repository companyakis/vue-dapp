// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/console.sol";

contract Mustafa {

    string public firstName = "Mustafa ";

    string public lastName = "Buyukdereli";

    string public fullName = string.concat(firstName, lastName);

    function getFullName() public view returns (string memory) {

        return fullName;
    }
}
