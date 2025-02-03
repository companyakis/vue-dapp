/*
Your Goal: Charity Donation
Let's take all funds that were passed to the receive function and donate them to charity. We'll do this in two steps.

First, modify the constructor to accept a new argument: the charity address.
Next, add a new function called donate. When this function is called transfer all remaining funds in the contract to the charity addres


*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

    address public owner;

    address public charity;

    constructor(address _c) {

        owner = msg.sender;

        charity = _c;
    }
    
    receive() external payable {
        
    }

    function tip() public payable {

        (bool met, ) = owner.call{value: msg.value}("");
    }

    function donate() public payable {

        (bool met, ) = charity.call{value: address(this).balance}("");

        require(met);
    }
    
}



/*

Contract Account
Within contracts, the this keyword can explicitly converted to an address:

import "forge-std/console.sol";
contract Contract {
	constructor() {
		console.log( address(this) ); // 0x7c2c195cd6d34b8f845992d380aadb2730bb9c6f
		console.log( address(this).balance ); // 0
	}
}
 Using this we can easily find the address and balance of the contract!


*/
