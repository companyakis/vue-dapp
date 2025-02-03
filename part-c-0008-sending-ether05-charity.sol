/*
Your Goal: Charity Donation
Let's take all funds that were passed to the receive function and donate them to charity. We'll do this in two steps.

First, modify the constructor to accept a new argument: the charity address.
Next, add a new function called donate. When this function is called transfer all remaining funds in the contract to the charity addres


*/





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
