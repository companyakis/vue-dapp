/*
 Your Goal: Receive Ether
Add a function to the contract that will allow it to receive ether on a transaction without any calldata.

*/


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

    address public owner;

    constructor() {

        owner = msg.sender;
    }
    
    receive() external payable {
        
    }
    
}



/*

Receive Function

In the latest versions of Solidity, contracts cannot receive ether by default.

In order to receive ether, a contract must specify a payable function. This is another keyword which affects the function's mutability similar to view and pure.

import "forge-std/console.sol";
contract Contract {
    function pay() public payable {
        console.log( msg.value ); // 100000
    }
}

Here the msg.value represents the amount of ether, in Wei, sent to the pay function. By simply adding the payable keyword to this function, it gains the ability to accept ether. 
Once received, the ether is automatically added to the contract's balance—no additional steps required!

In the case above we used the method pay as a payable function. This means we have to call this function in order to send the ether to the contract. 
What if we wanted to send it directly without specifying a method?

Turns out, we can do that too:

import "forge-std/console.sol";
contract Contract {
    receive() external payable {
        console.log(msg.value); // 100000
    }
}

You'll notice that receive does not use the function keyword. This is because it is a special function (like constructor). 
It is the function that runs when a contract is sent ether without any calldata, or when the calldata does not match a function signature on the contract.

The receive function must be external, payable, it cannot receive arguments and it cannot return anything.
*/
