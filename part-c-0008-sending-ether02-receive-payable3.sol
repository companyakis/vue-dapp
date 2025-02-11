/*
msg.value is a special global variable in Solidity. 
It represents the amount of wei (not Ether, 1 Ether = 10^18 wei) sent in a transaction. 
It's commonly used inside payable functions to determine how much Ether has been sent.

msg.value is a global variable provided by Solidity that contains the amount of Wei sent with the current transaction.

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Mustafa {

    uint public myReward;

    function donateETHWei() public payable {

        myReward += msg.value;
    }

}



  



  
