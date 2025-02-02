/*
Your Goal: Store the Owner
Create a public address state variable called owner on the contract
Next create a constructor function which will store the msg.sender in owner

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

    address public owner;

    constructor() {

        owner = msg.sender;
    }
    
}



/*
An address on the EVM is a 160 bits long, or a 40 character, hexadecimal string:

Ethereum Messages 
If an Externally Owned Account (EOA) wants to interact with the Ethereum Network, it broadcasts a transaction. Included in this transaction is data, designed to instruct the Ethereum Virtual Machine (EVM).

This data, commonly known as calldata, specifies actions for the EVM to execute and identifies a target contract account. The target may, in turn, initiate calls to other contract accounts. Each of these calls is considered a message call and carries information like the sender's address, the targeted function signature, and the amount of wei being sent.

In Solidity we have access to these message through global variables:

msg.data (bytes) - the complete calldata
msg.sender (address) - the address sending the message
msg.sig (bytes4) - the targeted function signature
msg.value (uint) - the amount of wei sent

*/
