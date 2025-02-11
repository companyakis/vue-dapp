/*
In Solidity, payable is a modifier that can be applied to functions or addresses. 
When payable is added to a function, that function is able to receive Ether (ETH) during a transaction. 
If a function doesn't have the payable modifier, it will reject any incoming Ether.

A payable function is a function within a contract that can receive Ether, while a payable address is an Ethereum address capable of receiving Ether directly. 
The terms refer to different aspects of handling Ether transactions within the Ethereum ecosystem.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Mustafa {

    function ILikeETH() public payable {

    }

    function getMyEtherBalance() public view returns (uint) {

        return address(this).balance;
    }

}



  



  
